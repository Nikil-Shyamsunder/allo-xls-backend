# ========== split outer loop into 2 and iner loop into 2 ==========
def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C

s = allo.customize(gemm)
s.split("i", factor=8)
s.split("j", factor=8)