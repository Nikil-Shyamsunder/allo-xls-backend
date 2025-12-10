from allo.ir.types import int32
import allo

def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
s.split("i", factor=8)
s.split("j", factor=8)
s.reorder("i.outer", "j.outer", "i.inner", "j.inner")
