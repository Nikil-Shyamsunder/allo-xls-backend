
const N: u32 = u32:32;
const T: u32 = u32:32;
const TILE_I: u32 = u32:8;
const TILE_J: u32 = u32:8;

// Helper: compute one C[i,j] as dot-product of row i of A and column j of B.
fn gemm_cell(A: s32[T][N], B: s32[T][N], i: u32, j: u32) -> s32 {
    for (k, acc): (u32, s32) in u32:0..T {
        acc + A[k][i] * B[j][k]
    }(s32:0)
}

// Lowered kernel with i and j split by factor 8, corresponding to
// tiles of 8x8 over the 32x32 output matrix.
fn allo_gemm_tiled(A: s32[T][N], B: s32[T][N]) -> s32[T][N] {
    // Outer tiles: ii (0..4), jj (0..4)
    for (ii, C0): (u32, s32[T][N]) in u32:0..(T / TILE_I) {
        for (jj, C1): (u32, s32[T][N]) in u32:0..(T / TILE_J) {
            // For each tile, compute the 8x8 block of C.
            for (i0, C2): (u32, s32[T][N]) in u32:0..TILE_I {
                let i: u32 = ii * TILE_I + i0;
                for (j0, C3): (u32, s32[T][N]) in u32:0..TILE_J {
                    let j: u32 = jj * TILE_J + j0;
                    let cij: s32 = gemm_cell(A, B, i, j);
                    update(C3, j, update(C3[j], i, cij))
                }(C2)
            }(C1)
        }(C0)
    }(s32[T][N]:[s32[N]:[s32:0, ...], ...])
}


// Wrapper for tests
fn allo_gemm(A: s32[T][N], B: s32[T][N]) -> s32[T][N] {
  allo_gemm_tiled(A, B)
}
