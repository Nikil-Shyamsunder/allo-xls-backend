
const N: u32 = u32:32;

// Helper: compute one C[i,j] entry as dot product of A row i and B column j.
fn dot_product(A: s32[N][N], B: s32[N][N], i: u32, j: u32) -> s32 {
    // Accumulator is s32; k is u32 in range [0, N).
    for (k, acc): (u32, s32) in u32:0..N {
        acc + A[i][k] * B[k][j]
    }(s32:0)
}

// Top-level GEMM: C = A * B, all 32x32, int32.
fn allo_gemm(A: s32[N][N], B: s32[N][N]) -> s32[N][N] {
    // Initialize C with zeros.
    let zero_row: s32[N] = s32[N]:[s32:0, ...];
    let mut_C: s32[N][N] = s32[N][N]:[zero_row, ...];

    // Fill C[i][j] = sum_k A[i][k] * B[k][j].
    for (i, C_i): (u32, s32[N][N]) in u32:0..N {
        // Update row i
        let row_i: s32[N] =
            for (j, row): (u32, s32[N]) in u32:0..N {
                let val: s32 = dot_product(A, B, i, j);
                update(row, j, val)
            }(zero_row);
        update(C_i, i, row_i)
    }(mut_C)
}
