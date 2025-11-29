"""AST-based MLIR to DSLX proc lowering.

This lowerer uses the AST builders instead of string-based generators,
providing a cleaner separation between structure and serialization.
"""

from allo._mlir.dialects import func as func_d
from ..systolic import (
    GridExtractor,
    FIFOAnalyzer,
    ConnectivityExtractor,
    PEAnalyzer
)
from ..builders import SystolicArrayBuilder, ProcModuleBuilder, PEProcBuilder
from ..dslx_ast import DslxProcSerializer


class MlirToDslxProcLowererAST:
    """AST-based proc lowerer for systolic arrays.
    
    This is a drop-in replacement for the string-based lowerer,
    but uses AST builders internally.
    """

    def __init__(self, module_op):
        self.module_op = module_op

    def lower(self, grid_func_name=None, pe_func_name=None):
        """Lower MLIR to DSLX using AST builders.

        Args:
            grid_func_name: Name of grid function (auto-detect if None)
            pe_func_name: Name of PE function (auto-detect if None)

        Returns:
            str: Generated DSLX code
        """
        try:
            # Step 1: Find functions
            grid_func = (self._find_function(grid_func_name) 
                        if grid_func_name 
                        else self._auto_find_grid_func())
            pe_func = (self._find_function(pe_func_name) 
                      if pe_func_name 
                      else self._auto_find_pe_func(grid_func))

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

            print(f"[AST Lowerer] Grid: {rows}x{cols}, K={k_bound}, type={elem_type}")

            # Step 3: Build using AST
            builder = SystolicArrayBuilder(
                rows=rows,
                cols=cols,
                k_bound=k_bound,
                elem_type=elem_type
            )
            
            module = builder.build_complete_module()

            # Step 4: Serialize to DSLX
            serializer = DslxProcSerializer()
            dslx_code = serializer.serialize(module)

            print(f"[AST Lowerer] Generated {len(dslx_code.splitlines())} lines of DSLX")

            return dslx_code

        except Exception as e:
            import traceback
            error_msg = f"// ERROR during AST lowering: {str(e)}\n"
            error_msg += "// Traceback:\n"
            for line in traceback.format_exc().split('\n'):
                error_msg += f"// {line}\n"
            return error_msg

    def _find_function(self, name):
        """Find function by exact name."""
        for op in self.module_op.body.operations:
            if isinstance(op, func_d.FuncOp) and op.name.value == name:
                return op
        return None

    def _auto_find_grid_func(self):
        """Auto-detect grid function by finding nested loops with func.call."""
        from allo._mlir.dialects import affine as affine_d

        for op in self.module_op.body.operations:
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
            for op in loop_op.body.operations:
                if isinstance(op, affine_d.AffineForOp):
                    if self._contains_func_call(op):
                        return True
        except:
            pass
        return False

    def _contains_func_call(self, loop_op):
        """Check if loop contains func.call."""
        try:
            for op in loop_op.body.operations:
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
