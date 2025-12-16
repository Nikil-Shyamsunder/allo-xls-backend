#!/usr/bin/env python3
"""3x3 K=2 Meta-If Systolic Array - uint32"""

import sys
sys.path.insert(0, '/scratch/cys36/allo-xls-backend')

import allo
from allo.ir.types import uint32, Stream
import allo.dataflow as df

M, N, K = 3, 3, 2
P0, P1 = M + 2, N + 2


@df.region()
def top():
    fifo_A: Stream[uint32, 4][P0, P1]
    fifo_B: Stream[uint32, 4][P0, P1]

    @df.kernel(mapping=[P0, P1])
    def gemm(A: uint32[M, K], B: uint32[K, N], C: uint32[M, N]):
        i, j = df.get_pid()
        # peripheral kernels
        with allo.meta_if(i in {0, M + 1} and j in {0, N + 1}):
            pass
        with allo.meta_elif(j == 0):
            # i > 0
            for k in range(K):
                fifo_A[i, j + 1].put(A[i - 1, k])
        with allo.meta_elif(i == 0):
            # j > 0
            for k in range(K):
                fifo_B[i + 1, j].put(B[k, j - 1])
        # drain
        with allo.meta_elif(i == M + 1 and j > 0):
            for k in range(K):
                b: uint32 = fifo_B[i, j].get()
        with allo.meta_elif(j == N + 1 and i > 0):
            for k in range(K):
                a: uint32 = fifo_A[i, j].get()
        # main body
        with allo.meta_else():
            c: uint32 = 0
            for k in range(K):
                a: uint32 = fifo_A[i, j].get()
                b: uint32 = fifo_B[i, j].get()
                c += a * b
                fifo_A[i, j + 1].put(a)
                fifo_B[i + 1, j].put(b)
            C[i - 1, j - 1] = c


if __name__ == "__main__":
    s = df.customize(top)
    print(s.module)
