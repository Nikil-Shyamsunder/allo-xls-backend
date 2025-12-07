"""Detect systolic array patterns in MLIR IR."""

from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import memref as memref_d
from allo._mlir.dialects import affine as affine_d


class SystolicDetector:
    """Detects systolic array patterns in MLIR module."""

    def __init__(self, module_op):
        self.module_op = module_op
        self.systolic_tile_func = None
        self.pe_kernel_func = None

    def is_systolic(self):
        """Check if module contains systolic array pattern."""
        for op in self.module_op.body.operations:
            if not isinstance(op, func_d.FuncOp):
                continue

            func_name = op.name.value
            # Debug: print what we're checking
            # print(f"Checking function: {func_name}")

            # Look for systolic_tile or similar function
            if self._is_systolic_tile_func(op):
                self.systolic_tile_func = op
                # print(f"  -> Found systolic_tile: {func_name}")

            # Look for PE_kernel function
            if self._is_pe_kernel_func(op):
                self.pe_kernel_func = op
                # print(f"  -> Found PE_kernel: {func_name}")

        return self.systolic_tile_func is not None and self.pe_kernel_func is not None

    def _is_systolic_tile_func(self, func_op):
        """Check if function is a systolic tile."""
        name = func_op.name.value.lower()

        # Check name pattern
        if 'systolic' not in name and 'tile' not in name:
            return False

        # Look for characteristic patterns
        has_fifo_allocs = False
        has_nested_loops_with_call = False

        try:
            for block in func_op.body:
                for op in block.operations:
                    # Check for FIFO allocations
                    if isinstance(op, memref_d.AllocOp):
                        try:
                            alloc_name = str(op.attributes.get('name', '')).strip('"').lower()
                            if 'fifo' in alloc_name:
                                has_fifo_allocs = True
                        except:
                            pass

                    # Check for nested loops with func.call
                    if isinstance(op, affine_d.AffineForOp):
                        if self._has_nested_call(op):
                            has_nested_loops_with_call = True
        except:
            return False

        return has_fifo_allocs and has_nested_loops_with_call

    def _is_pe_kernel_func(self, func_op):
        """Check if function is a PE kernel."""
        name = func_op.name.value
        return 'PE_kernel' in name or 'pe_kernel' in name.lower()

    def _has_nested_call(self, for_op, depth=0, max_depth=3):
        """Recursively check if loop contains a func.call."""
        if depth > max_depth:
            return False

        try:
            for block in for_op.body:
                for op in block.operations:
                    if isinstance(op, func_d.CallOp):
                        return True
                    if isinstance(op, affine_d.AffineForOp):
                        if self._has_nested_call(op, depth + 1, max_depth):
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
