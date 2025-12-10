"""
Allo source code for 2x2 systolic array with K=2

This is the pure Allo/Python source that generates the MLIR.
The systolic library call is compiled by Allo into MLIR.
"""

import allo
from allo.ir.types import uint32
from allo.library.systolic import systolic


def systolic_2x2_k2(A: "uint32[2, 2]", B: "uint32[2, 2]") -> "uint32[2, 2]":
    """
    2x2 systolic array with K=2

    Performs matrix multiplication C = A @ B where:
    - A is 2x2 (M=2, K=2)
    - B is 2x2 (K=2, N=2)
    - C is 2x2 (M=2, N=2)

    The systolic call parameters are:
    systolic[a_type, b_type, c_type, M, K, N, grid_M, grid_K](A, B, C)
    - Types: uint32 for all
    - Matrix dims: M=2, K=2, N=2
    - Grid: 2x2 (grid_M=2, grid_K=2)
    """
    C: uint32[2, 2] = 0
    systolic[uint32, uint32, uint32, 2, 2, 2, 2, 2](A, B, C)
    return C


if __name__ == "__main__":
    # Generate MLIR from this Allo function
    s = allo.customize(systolic_2x2_k2)
    mlir_module = s.module

    # Print MLIR
    print(mlir_module)

    # Save to file
    with open("systolic_2x2_k2.mlir", 'w') as f:
        f.write(str(mlir_module))

    print(f"\n✓ MLIR saved to systolic_2x2_k2.mlir")
    print(f"  Lines: {len(str(mlir_module).splitlines())}")
