"""Test XLS IR lowering."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import int32
from allo._mlir.dialects import func as func_d

from allo.backend.xls_ir.ir_lowerer import MlirToXlsIRLowerer


def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
    C: int32[32, 32] = 0
    for i, j, k in allo.grid(32, 32, 32):
        C[i, j] += A[i, k] * B[k, j]
    return C


def main():
    print("Generating Allo GEMM MLIR...")
    s = allo.customize(allo_gemm)
    module = s.module

    print("\n=== MLIR Module (first 50 lines) ===")
    mlir_str = str(module)
    lines = mlir_str.split('\n')
    for i, line in enumerate(lines[:50]):
        print(f"{i+1:3}: {line}")

    # Find func op
    func_op = None
    for op in module.body.operations:
        if isinstance(op, func_d.FuncOp):
            func_op = op
            break

    if func_op is None:
        raise RuntimeError("No func.func found in MLIR module")

    print("\n=== Lowering to XLS IR ===")
    lowerer = MlirToXlsIRLowerer(func_op)
    ir_text = lowerer.lower()

    print("\n=== Generated XLS IR ===")
    print(ir_text)

    # Save to file
    output_file = "/tmp/gemm.ir"
    with open(output_file, 'w') as f:
        f.write(ir_text)

    print(f"\n=== Saved to {output_file} ===")


if __name__ == "__main__":
    main()
