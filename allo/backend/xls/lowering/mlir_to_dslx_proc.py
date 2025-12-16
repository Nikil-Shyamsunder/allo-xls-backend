"""AST-based MLIR to DSLX proc lowering.

This lowerer uses the AST builders instead of string-based generators,
providing a cleaner separation between structure and serialization.
"""

from allo._mlir.dialects import func as func_d
from ..systolic import (
    GridExtractor,
    FIFOAnalyzer,
    ConnectivityExtractor,
    PEAnalyzer,
    MatrixDimensionExtractor
)
from ..systolic.detector import SystolicDetector
from ..systolic.metaif_analyzer import MetaIfSystolicAnalyzer
from ..builders import XLSSystolicArrayBuilder
from ..dslx_ast import DslxProcSerializer


class MlirToDslxProcLowererAST:
    """AST-based proc lowerer for systolic arrays.
    
    This is a drop-in replacement for the string-based lowerer,
    but uses AST builders internally.
    """

    def __init__(self, module_or_op):
        # Handle both Module and Operation
        if hasattr(module_or_op, 'body') and hasattr(module_or_op.body, 'operations'):
            # It's a Module
            self.module = module_or_op
            self.module_op = module_or_op.operation if hasattr(module_or_op, 'operation') else None
        elif hasattr(module_or_op, 'regions'):
            # It's an Operation
            self.module = None
            self.module_op = module_or_op
        else:
            raise ValueError(f"Cannot handle {type(module_or_op)}")

    def lower(self, grid_func_name=None, pe_func_name=None):
        """Lower MLIR to DSLX using AST builders.

        Args:
            grid_func_name: Name of grid function (auto-detect if None)
            pe_func_name: Name of PE function (auto-detect if None)

        Returns:
            str: Generated DSLX code
        """
        try:
            # Step 0: Try to detect which pattern we have
            # Pass the right object to detector (it handles both Module and Operation)
            detector_input = self.module if self.module else self.module_op
            detector = SystolicDetector(detector_input)
            has_library_pattern = detector.is_systolic()
            has_metaif_pattern = detector.is_metaif_systolic()
            
            if has_library_pattern:
                print("[AST Lowerer] Detected library-style systolic array pattern")
                return self._lower_library_pattern(grid_func_name, pe_func_name)
            elif has_metaif_pattern:
                print("[AST Lowerer] Detected meta_if-style systolic array pattern")
                return self._lower_metaif_pattern()
            else:
                return "// ERROR: No recognized systolic array pattern found\n"

        except Exception as e:
            import traceback
            error_msg = f"// ERROR during AST lowering: {str(e)}\n"
            error_msg += "// Traceback:\n"
            for line in traceback.format_exc().split('\n'):
                error_msg += f"// {line}\n"
            return error_msg

    def _lower_library_pattern(self, grid_func_name=None, pe_func_name=None):
        """Lower library-style systolic array (with systolic_tile and PE_kernel)."""
        try:
            # Use detector to find functions
            detector_input = self.module if self.module else self.module_op
            detector = SystolicDetector(detector_input)
            
            # Must call is_systolic() to populate the function fields
            detector.is_systolic()
            
            # Get functions from detector
            grid_func = (self._find_function(grid_func_name) 
                        if grid_func_name 
                        else detector.get_systolic_tile_func())
            pe_func = (self._find_function(pe_func_name) 
                      if pe_func_name 
                      else detector.get_pe_kernel_func())

            if not grid_func or not pe_func:
                return "// ERROR: Could not find required functions\n"

            print(f"[AST Lowerer] Using grid function: {grid_func.name.value}")
            print(f"[AST Lowerer] Using PE function: {pe_func.name.value}")

            # Step 2: Extract information
            grid_info = GridExtractor(grid_func).extract()
            pe_info = PEAnalyzer(pe_func).extract()

            rows = grid_info['rows']
            cols = grid_info['cols']
            k_bound = pe_info['k_bound']
            elem_type = pe_info['element_type']

            # Step 2.5: Find top-level function and extract matrix dimensions
            top_func = self._auto_find_top_level_func()
            if top_func:
                print(f"[AST Lowerer] Using top-level function: {top_func.name.value}")
                matrix_dims = MatrixDimensionExtractor(top_func).extract()
                M = matrix_dims['M']
                N = matrix_dims['N']
                print(f"[AST Lowerer] Matrix dimensions: M={M}, N={N}, K={matrix_dims['K']}")
            else:
                # Fallback: assume PE grid dimensions match output dimensions
                print(f"[AST Lowerer] Warning: Could not find top-level function, using grid dimensions")
                M = rows
                N = cols

            print(f"[AST Lowerer] Grid: {rows}x{cols}, K={k_bound}, type={elem_type}")

            # Step 3: Build using XLS-compatible concrete builder
            builder = XLSSystolicArrayBuilder(
                rows=rows,
                cols=cols,
                k_bound=k_bound,
                elem_type=elem_type
            )

            module = builder.build_module()

            # Step 4: Serialize to DSLX
            serializer = DslxProcSerializer()
            dslx_code = serializer.serialize(module)

            print(f"[AST Lowerer] Generated {len(dslx_code.splitlines())} lines of DSLX")

            return dslx_code

        except Exception as e:
            import traceback
            error_msg = f"// ERROR during library pattern lowering: {str(e)}\n"
            error_msg += "// Traceback:\n"
            for line in traceback.format_exc().split('\n'):
                error_msg += f"// {line}\n"
            return error_msg

    def _lower_metaif_pattern(self):
        """Lower meta_if-style systolic array using XLSSystolicArrayBuilder.
        
        Instead of trying to generate individual PE procs from unrolled functions,
        we extract the systolic parameters (M, N, K, type) and use the builder
        to generate proper XLS-compatible code with unroll_for! constructs.
        """
        try:
            print("[AST Lowerer] Attempting meta_if pattern translation using XLSSystolicArrayBuilder")
            
            # Pass the appropriate object to the analyzer
            analyzer_input = self.module if self.module else self.module_op
            analyzer = MetaIfSystolicAnalyzer(analyzer_input)
            
            # Extract systolic parameters from MLIR
            params = analyzer.extract_parameters()
            
            print(f"[AST Lowerer] Extracted parameters: M={params['M']}, N={params['N']}, K={params['K']}, type={params['type']}")
            
            # Use XLSSystolicArrayBuilder to generate proper code
            from allo.backend.xls.builders.xls_systolic_builder import XLSSystolicArrayBuilder
            
            builder = XLSSystolicArrayBuilder(
                rows=params['M'],
                cols=params['N'],
                k_bound=params['K'],
                elem_type=params['type']
            )
            
            module = builder.build_module()
            serializer = DslxProcSerializer()
            dslx_code = serializer.serialize(module)
            
            print(f"[AST Lowerer] Generated {len(dslx_code.splitlines())} lines of DSLX from meta_if pattern")
            
            return dslx_code
            
        except Exception as e:
            import traceback
            error_msg = f"// ERROR during meta_if pattern lowering: {str(e)}\n"
            error_msg += "// Traceback:\n"
            for line in traceback.format_exc().split('\n'):
                error_msg += f"// {line}\n"
            return error_msg

    def _find_function(self, name):
        """Find function by exact name."""
        operations = self.module.body.operations if self.module else self.module_op.regions[0].blocks[0].operations
        for op in operations:
            if isinstance(op, func_d.FuncOp) and op.name.value == name:
                return op
        return None

    def _auto_find_grid_func(self):
        """Auto-detect grid function by finding nested loops with func.call."""
        from allo._mlir.dialects import affine as affine_d

        operations = self.module.body.operations if self.module else self.module_op.regions[0].blocks[0].operations
        for op in operations:
            if not isinstance(op, func_d.FuncOp):
                continue

            try:
                for block in op.body.blocks:
                    for stmt in block.operations:
                        if isinstance(stmt, affine_d.AffineForOp):
                            if self._has_nested_loop_with_call(stmt):
                                return op
            except:
                pass

        return None

    def _has_nested_loop_with_call(self, loop_op):
        """Check if loop has nested loop containing func.call."""
        from allo._mlir.dialects import affine as affine_d

        try:
            for region in loop_op.regions:
                for block in region.blocks:
                    for op in block.operations:
                        if isinstance(op, affine_d.AffineForOp):
                            if self._contains_func_call(op):
                                return True
        except:
            pass
        return False

    def _contains_func_call(self, loop_op):
        """Check if loop contains func.call."""
        try:
            for region in loop_op.regions:
                for block in region.blocks:
                    for op in block.operations:
                        if isinstance(op, func_d.CallOp):
                            return True
        except:
            pass
        return False

    def _auto_find_pe_func(self, grid_func):
        """Find PE function by looking at what's called from grid."""
        if not grid_func:
            return None

        try:
            for block in grid_func.body.blocks:
                for stmt in self._walk_ops(block):
                    if isinstance(stmt, func_d.CallOp):
                        try:
                            callee_attr = stmt.attributes['callee']
                            callee_name = str(callee_attr).strip('@"')
                            return self._find_function(callee_name)
                        except:
                            if hasattr(stmt, 'callee'):
                                callee_name = str(stmt.callee).strip('@"')
                                return self._find_function(callee_name)
        except:
            pass

        return None

    def _auto_find_top_level_func(self):
        """Find the top-level entry point function.

        The top-level function typically:
        - Has a simple structure (allocates output, calls grid function, returns result)
        - Has 2 input arguments (A, B matrices)
        - Returns a memref (C matrix)
        - Name often contains the systolic dimension info
        """
        candidates = []

        operations = self.module.body.operations if self.module else self.module_op.regions[0].blocks[0].operations
        for op in operations:
            if not isinstance(op, func_d.FuncOp):
                continue

            # Check if it has 2 arguments (A, B matrices)
            if len(op.arguments) == 2:
                # Check if it returns a memref
                try:
                    func_type = op.function_type.value
                    # If this function has results (returns something), it's likely the top-level
                    if hasattr(func_type, 'results') and len(func_type.results) > 0:
                        candidates.append(op)
                except:
                    pass

        # If we found candidates, return the one with the most descriptive name
        if candidates:
            # Prefer functions with "systolic" in the name
            for func in candidates:
                if 'systolic' in func.name.value.lower():
                    return func
            # Otherwise return the first candidate
            return candidates[0]

        return None

    def _walk_ops(self, block, depth=0, max_depth=10):
        """Recursively walk all ops in block."""
        if depth > max_depth:
            return

        from allo._mlir.dialects import affine as affine_d

        for op in block.operations:
            yield op
            if isinstance(op, affine_d.AffineForOp):
                try:
                    yield from self._walk_ops(op.body, depth + 1, max_depth)
                except:
                    pass
