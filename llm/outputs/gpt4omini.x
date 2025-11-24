def allo_gemm(A: xls.int32[32, 32], B: xls.int32[32, 32]) -> xls.int32[32, 32]:
    C: xls.int32[32, 32] = xls.zeros(xls.int32[32, 32])
    for i, j, k in xls.grid(32, 32, 32):
        C[i, j] += A[i, k] * B[k, j]
    return C