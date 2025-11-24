"""Test XLS IR lowering with small matrices."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import int32
from allo._mlir.dialects import func as func_d

from allo.backend.xls_ir.ir_lowerer import MlirToXlsIRLowerer


def allo_gemm_small(A: int32[8, 8], B: int32[8, 8]) -> int32[8, 8]:
    C: int32[8, 8] = 0
    for i, j, k in allo.grid(8, 8, 8):
        C[i, j] += A[i, k] * B[k, j]
    return C


def main():
    print("Generating Allo GEMM MLIR (8x8x8)...")
    s = allo.customize(allo_gemm_small)
    module = s.module

    print("\n=== MLIR Module (first 80 lines) ===")
    mlir_str = str(module)
    lines = mlir_str.split('\n')
    for i, line in enumerate(lines[:80]):
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

    print("\n=== Generated XLS IR (first 200 lines) ===")
    ir_lines = ir_text.split('\n')
    for i, line in enumerate(ir_lines[:200]):
        print(f"{i+1:3}: {line}")

    # Save to file
    output_file = "/tmp/gemm_small.ir"
    with open(output_file, 'w') as f:
        f.write(ir_text)

    print(f"\n=== Saved to {output_file} ===")
    print(f"Total lines: {len(ir_lines)}")


if __name__ == "__main__":
    main()
