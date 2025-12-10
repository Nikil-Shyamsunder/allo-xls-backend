from allo.ir.types import int32
import allo




# ========== Simple ==========
def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
print(s.module)




# ========== split outer loop into 2 ==========
def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
s.split("i", factor=8)
print(s.module)


# ========== split inner loop into 2 ==========
def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
s.split("j", factor=8)
print(s.module)


# ========== split outer loop into 2 and iner loop into 2 ==========
def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
s.split("i", factor=8)
s.split("j", factor=8)
print(s.module)


# ========== split both loops and reorder ==========
def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   for i, j, k in allo.grid(32, 32, 32):
       C[i, j] += A[i, k] * B[k, j]
   return C


s = allo.customize(gemm)
s.split("i", factor=8)
s.split("j", factor=8)
s.reorder("i.outer", "j.outer", "i.inner", "j.inner")
print(s.module)




# ========== compose two subkernels ==========
from allo.ir.types import int32
import allo
import allo




# pure matmul into an intermediate buffer
def mm1(A: int32[32, 32], B: int32[32, 32], out_AB: int32[32, 32]):
   for i0, j0, k0 in allo.grid(32, 32, 32, name="mm1"):
       out_AB[i0, j0] += A[i0, k0] * B[k0, j0]


def ele_copy(out_AB: int32[32, 32], C: int32[32, 32]):
   for i1, j1 in allo.grid(32, 32, name="ele_copy"):
       C[i1, j1] = out_AB[i1, j1]


def gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
   C: int32[32, 32] = 0
   out_AB: int32[32, 32] = 0


   mm1(A, B, out_AB)
   ele_copy(out_AB, C)


   return C


s = allo.customize(gemm)


# Customize sub-kernels
sch_mm1 = allo.customize(mm1)
sch_ele = allo.customize(ele_copy)


s.compose(sch_mm1)
s.compose(sch_ele)


print(s.module)



