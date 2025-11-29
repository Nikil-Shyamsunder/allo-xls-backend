import sys
sys.path.insert(0, '/home/yb265/allo-xls-backend')

import allo
from allo.ir.types import int32
from allo._mlir.dialects import func as func_d

from allo.backend.xls import MlirToDslxLowerer, debug_print_ir


def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
    C: int32[32, 32] = 0
    for i, j, k in allo.grid(32, 32, 32):
        C[i, j] += A[i, k] * B[k, j]
    return C


def main():
    s = allo.customize(allo_gemm)
    module = s.module

    # print("MLIR MODULE")
    # print(module)

    func_op = None
    for op in module.body.operations:
        if isinstance(op, func_d.FuncOp):
            func_op = op
            break

    if func_op is None:
        raise RuntimeError("No top-level func.func found in MLIR module")

    # print("found function...")
    # print(func_op)

    # print("lowering to DSLX...")
    lowerer = MlirToDslxLowerer(func_op)
    dslx_text = lowerer.lower()

    # print("===generated DSLX===")
    print(dslx_text)


if __name__ == "__main__":
    main()


