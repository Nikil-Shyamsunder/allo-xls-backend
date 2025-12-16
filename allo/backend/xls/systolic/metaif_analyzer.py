"""Analyzer for extracting systolic parameters from meta_if MLIR patterns.

This analyzer extracts M, N, K dimensions and element type from the unrolled
meta_if functions without trying to generate individual PE procs.
"""

from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import affine as affine_d
import re


class MetaIfSystolicAnalyzer:
    """Extracts systolic array parameters from meta_if MLIR."""
    
    def __init__(self, module_or_op):
        # Handle both Module objects and Operation objects
        if hasattr(module_or_op, 'body') and hasattr(module_or_op.body, 'operations'):
            # It's a Module object
            self.operations = module_or_op.body.operations
        elif hasattr(module_or_op, 'regions'):
            # It's an Operation with regions
            self.operations = module_or_op.regions[0].blocks[0].operations
        else:
            raise ValueError(f"Cannot extract operations from {type(module_or_op)}")
        
        self.functions = {}
        
    def extract_parameters(self):
        """Extract M, N, K, and element type from the MLIR module.
        
        Returns:
            dict: {'M': int, 'N': int, 'K': int, 'type': str}
        """
        # Collect all functions
        for op in self.operations:
            if isinstance(op, func_d.FuncOp):
                func_name = op.name.value
                self.functions[func_name] = op
        
        # Extract grid dimensions from function names (gemm_i_j pattern)
        M, N = self._extract_grid_dimensions()
        
        # Extract K from an interior PE function
        K = self._extract_k_bound()
        
        # Extract element type from function signatures
        elem_type = self._extract_element_type()
        
        return {
            'M': M,
            'N': N,
            'K': K,
            'type': elem_type
        }
    
    def _extract_grid_dimensions(self):
        """Extract M and N from gemm_i_j function names.
        
        The meta_if pattern creates functions like gemm_0_0, gemm_0_1, ..., gemm_M+1_N+1
        The actual compute grid is M x N (excluding the peripheral loaders/drains).
        """
        max_i = -1
        max_j = -1
        
        for func_name in self.functions.keys():
            # Match gemm_i_j pattern
            match = re.match(r'gemm_(\d+)_(\d+)', func_name)
            if match:
                i = int(match.group(1))
                j = int(match.group(2))
                max_i = max(max_i, i)
                max_j = max(max_j, j)
        
        if max_i < 0 or max_j < 0:
            raise ValueError("Could not extract grid dimensions from function names")
        
        # The grid includes peripheral loaders/drains, so actual compute grid is:
        # M = max_i - 1 (excluding i=0 loader and i=M+1 drain)
        # N = max_j - 1 (excluding j=0 loader and j=N+1 drain)
        M = max_i - 1
        N = max_j - 1
        
        return M, N
    
    def _extract_k_bound(self):
        """Extract K from the loop bound in an interior PE function.
        
        Interior PEs have a loop like: for k in range(K)
        """
        # Find an interior PE (one with MAC computation)
        for func_name, func_op in self.functions.items():
            if self._is_interior_pe(func_op):
                # Extract loop bound
                k = self._get_loop_bound(func_op)
                if k is not None:
                    return k
        
        raise ValueError("Could not extract K bound from interior PE functions")
    
    def _extract_element_type(self):
        """Extract element type from function signatures or operations.
        
        Look for memref types like memref<2x2xi32> or operations like arith.mulf.
        Also check function attributes for unsigned markers.
        """
        # First check function attributes for unsigned markers
        for func_op in self.functions.values():
            try:
                # Check if function has itypes attribute with 'u' (unsigned)
                if hasattr(func_op, 'attributes'):
                    attrs_str = str(func_op.attributes)
                    if 'itypes = "u' in attrs_str:
                        # It's unsigned - check what size
                        func_str = str(func_op.type)
                        if 'i32' in func_str or 'i64' not in func_str:
                            return 'u32'
                        if 'i64' in func_str:
                            return 'u64'
                
                # Check for unsigned attribute on operations
                for block in func_op.body:
                    for op in block.operations:
                        op_str = str(op)
                        if '{unsigned}' in op_str or 'unsigned' in op_str:
                            return 'u32'
            except:
                pass
        
        # Check function signatures for memref types
        for func_op in self.functions.values():
            func_type = func_op.type
            func_str = str(func_type)
            
            # Look for floating point types first
            if 'f32' in func_str:
                return 'F32'
            if 'f64' in func_str:
                return 'F64'
            
            # Look for integer types
            if 'ui32' in func_str or 'u32' in func_str:
                return 'u32'
            if 'i64' in func_str:
                return 's64'
            if 'i32' in func_str:
                return 's32'
        
        # Fallback: check operations
        for func_op in self.functions.values():
            try:
                for block in func_op.body:
                    for op in block.operations:
                        op_name = str(op.operation.name)
                        if 'mulf' in op_name or 'addf' in op_name:
                            return 'F32'
                        if 'muli' in op_name or 'addi' in op_name:
                            # Check if signed or unsigned
                            if 'ui' in op_name:
                                return 'u32'
                            return 's32'
            except:
                pass
        
        # Default
        return 's32'
    
    def _is_interior_pe(self, func_op):
        """Check if function is an interior PE (has MAC computation)."""
        try:
            has_mul = False
            has_add = False
            stream_get_count = 0
            
            for block in func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        for inner_op in op.body.operations:
                            op_name = str(inner_op.operation.name)
                            if 'mul' in op_name:
                                has_mul = True
                            if 'add' in op_name:
                                has_add = True
                            if 'stream_get' in op_name:
                                stream_get_count += 1
            
            return has_mul and has_add and stream_get_count >= 2
        except:
            return False
    
    def _get_loop_bound(self, func_op):
        """Extract loop bound from affine.for operation."""
        try:
            for block in func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        # Try to get the upper bound directly from the operation
                        # AffineForOp typically has upper_bound_map attribute
                        try:
                            # Convert the operation to string and parse
                            op_str = str(op)
                            # Look for pattern like "affine.for %arg = 0 to 2"
                            match = re.search(r'affine\.for.*=\s*\d+\s+to\s+(\d+)', op_str)
                            if match:
                                return int(match.group(1))
                        except:
                            pass
                        
                        # Alternative: check the operation attributes
                        try:
                            if hasattr(op, 'upper_bound_map'):
                                # Get the constant from the affine map
                                upper_map_str = str(op.upper_bound_map)
                                match = re.search(r'\((\d+)\)', upper_map_str)
                                if match:
                                    return int(match.group(1))
                        except:
                            pass
        except:
            pass
        
        return None
