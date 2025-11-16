# allo_to_dslx_gemm.py

import allo
from allo.ir.types import int32

from allo._mlir.ir import MemRefType
from allo._mlir.dialects import affine as affine_d
from allo._mlir.dialects import func as func_d

# simplest gemm
def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
    C: int32[32, 32] = 0
    for i, j, k in allo.grid(32, 32, 32):
        C[i, j] += A[i, k] * B[k, j]
    return C


# walk the IR
def debug_print_ir(module):
    print("=== MLIR MODULE DUMP (for inspection) ===")
    print(module)
    print("=== STRUCTURED WALK ===")

    def walk(op, indent=0):
        print("  " * indent + op.operation.name)
        for region in op.regions:
            for block in region.blocks:
                for nested in block.operations:
                    walk(nested, indent + 1)

    walk(module.operation)
    print("=== END WALK ===")


def main():
    s = allo.customize(allo_gemm)
    module = s.module

    # 2. Print IR for inspection (optional)
    debug_print_ir(module)

if __name__ == "__main__":
    main()
