from allo.ir.types import int32
import allo

def mm1(A: int32[4, 4], B: int32[4, 4], out_AB: int32[4, 4]):
    for i0, j0, k0 in allo.grid(4, 4, 4, name="mm1"):
        out_AB[i0, j0] += A[i0, k0] * B[k0, j0]

def ele_copy(out_AB: int32[4, 4], C: int32[4, 4]):
    for i1, j1 in allo.grid(4, 4, name="ele_copy"):
        C[i1, j1] = out_AB[i1, j1]

def gemm(A: int32[4, 4], B: int32[4, 4]) -> int32[4, 4]:
    C: int32[4, 4] = 0
    out_AB: int32[4, 4] = 0
    mm1(A, B, out_AB)
    ele_copy(out_AB, C)
    return C

s = allo.customize(gemm)
sch_mm1 = allo.customize(mm1)
sch_ele = allo.customize(ele_copy)
s.compose(sch_mm1)
s.compose(sch_ele)
print(s.module)
