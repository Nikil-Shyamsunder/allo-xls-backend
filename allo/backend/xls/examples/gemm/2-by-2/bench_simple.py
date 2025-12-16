from allo.ir.types import uint32
import allo

def gemm(A: uint32[2, 2], B: uint32[2, 2]) -> uint32[2, 2]:
    C: uint32[2, 2] = 0
    for i, j, k in allo.grid(2, 2, 2):
        C[i, j] += A[i, k] * B[k, j]
    return C

s = allo.customize(gemm)
print(s.module)
