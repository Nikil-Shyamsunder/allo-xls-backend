from allo.ir.types import int32
import allo

def gemm(A: int32[4, 4], B: int32[4, 4]) -> int32[4, 4]:
    C: int32[4, 4] = 0
    for i, j, k in allo.grid(4, 4, 4):
        C[i, j] += A[i, k] * B[k, j]
    return C

s = allo.customize(gemm)
s.split("i", factor=2)
s.split("j", factor=2)
s.reorder("i.outer", "j.outer", "i.inner", "j.inner")
print(s.module)
