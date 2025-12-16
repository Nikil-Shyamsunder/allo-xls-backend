"""Detect systolic array patterns in MLIR IR."""

from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import memref as memref_d
from allo._mlir.dialects import affine as affine_d


class SystolicDetector:
    """Detects systolic array patterns in MLIR module."""

    def __init__(self, module_or_op):
        # Handle both Module and Operation objects
        if hasattr(module_or_op, 'body') and hasattr(module_or_op.body, 'operations'):
            # It's a Module
            self.operations = module_or_op.body.operations
        elif hasattr(module_or_op, 'regions'):
            # It's an Operation with regions
            self.operations = module_or_op.regions[0].blocks[0].operations
        else:
            raise ValueError(f"Cannot extract operations from {type(module_or_op)}")
        
        self.systolic_tile_func = None
        self.pe_kernel_func = None

    def is_systolic(self):
        """Check if module contains library-style systolic array pattern."""
        for op in self.operations:
            if not isinstance(op, func_d.FuncOp):
                continue

            func_name = op.name.value

            # Look for systolic_tile or similar function
            if self._is_systolic_tile_func(op):
                self.systolic_tile_func = op

            # Look for PE_kernel function
            if self._is_pe_kernel_func(op):
                self.pe_kernel_func = op

        return self.systolic_tile_func is not None and self.pe_kernel_func is not None
    
    def is_metaif_systolic(self):
        """Check if module contains meta_if-style systolic array pattern.
        
        Meta-if pattern characteristics:
        - Multiple gemm_i_j functions (one per grid position)
        - Functions with similar structure but different positions
        - Some functions load inputs (edge loaders)
        - Some functions do MAC computation (interior PEs)
        - Some functions drain outputs (edge drains)
        """
        gemm_funcs = []
        interior_funcs = []
        
        for op in self.operations:
            if not isinstance(op, func_d.FuncOp):
                continue
            
            func_name = op.name.value
            
            # Look for gemm_i_j pattern
            import re
            if re.match(r'gemm_\d+_\d+', func_name):
                gemm_funcs.append(op)
                
                # Check if it's an interior PE (has mul+add)
                if self._has_mac_computation(op):
                    interior_funcs.append(op)
        
        # Meta-if pattern should have multiple gemm functions and at least one interior PE
        return len(gemm_funcs) >= 4 and len(interior_funcs) >= 1
    
    def _has_mac_computation(self, func_op):
        """Check if function has multiply-accumulate computation."""
        from allo._mlir.dialects import arith as arith_d
        from allo._mlir.dialects import affine as affine_d
        
        has_mul = False
        has_add = False
        
        try:
            for block in func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        for inner_op in op.body.operations:
                            op_str = str(type(inner_op).__name__)
                            if 'Mul' in op_str:
                                has_mul = True
                            if 'Add' in op_str:
                                has_add = True
        except:
            pass
        
        return has_mul and has_add

    def _is_systolic_tile_func(self, func_op):
        """Check if function is a systolic tile."""
        name = func_op.name.value.lower()

        # Check name pattern
        if 'systolic' not in name and 'tile' not in name:
            return False

        # Look for characteristic patterns
        has_fifo_allocs = False
        has_pe_calls = False  # Changed: look for PE calls at any level

        try:
            for block in func_op.body:
                for op in block.operations:
                    # Check for FIFO allocations
                    if isinstance(op, memref_d.AllocOp):
                        try:
                            if 'name' in op.attributes:
                                alloc_name = str(op.attributes['name']).strip('"').lower()
                                if 'fifo' in alloc_name:
                                    has_fifo_allocs = True
                        except:
                            pass

                    # Check for PE kernel calls (at any level)
                    if isinstance(op, func_d.CallOp):
                        callee = op.attributes['callee']
                        if 'PE_kernel' in str(callee) or 'pe_kernel' in str(callee).lower():
                            has_pe_calls = True
                    
                    # Also check inside loops
                    if isinstance(op, affine_d.AffineForOp):
                        if self._has_pe_call(op):
                            has_pe_calls = True
        except:
            return False

        return has_fifo_allocs and has_pe_calls

    def _is_pe_kernel_func(self, func_op):
        """Check if function is a PE kernel."""
        name = func_op.name.value
        return 'PE_kernel' in name or 'pe_kernel' in name.lower()

    def _has_pe_call(self, for_op, depth=0, max_depth=3):
        """Recursively check if loop contains a PE kernel call."""
        if depth > max_depth:
            return False

        try:
            # Access the body region's operations
            for region in for_op.regions:
                for block in region.blocks:
                    for op in block.operations:
                        if isinstance(op, func_d.CallOp):
                            callee = op.attributes['callee']
                            if 'PE_kernel' in str(callee) or 'pe_kernel' in str(callee).lower():
                                return True
                        if isinstance(op, affine_d.AffineForOp):
                            if self._has_pe_call(op, depth + 1, max_depth):
                                return True
        except:
            pass

        return False

    def get_systolic_tile_func(self):
        """Get the detected systolic tile function."""
        return self.systolic_tile_func

    def get_pe_kernel_func(self):
        """Get the detected PE kernel function."""
        return self.pe_kernel_func
