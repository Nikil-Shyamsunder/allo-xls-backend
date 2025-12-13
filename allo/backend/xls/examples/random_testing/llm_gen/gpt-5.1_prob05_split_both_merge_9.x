
const M: u32 = u32:32;
const TILE_I: u32 = u32:8;
const TILE_J: u32 = u32:8;

// GEMM kernel:
// C[i, j] = sum_k A[i, k] * B[k, j]
// with Allo schedule:
//   split i by 8 -> (i_outer, i_inner)
//   split j by 8 -> (j_outer, j_inner)
//   reorder loops: i_outer, j_outer, i_inner, j_inner, k
fn allo_gemm(A: s32[M][M], B: s32[M][M]) -> s32[M][M] {
  // Initialize C to zero.
  let zero_row = s32[M]:[s32:0, ...];
  let mut_C = s32[M][M]:[zero_row, ...];

  // Outer tile loops: i_outer, j_outer
  let C_after_outer =
    for (ij_outer, C_accum_outer): (u32, s32[M][M])
        in u32:0..(M / TILE_I * M / TILE_J) {
      let i_outer = ij_outer / (M / TILE_J);
      let j_outer = ij_outer % (M / TILE_J);

      // Inner tile loops: i_inner, j_inner
      let C_after_inner =
        for (ij_inner, C_accum_inner): (u32, s32[M][M])
            in u32:0..(TILE_I * TILE_J) {
          let i_inner = ij_inner / TILE_J;
          let j_inner = ij_inner % TILE_J;

          let i = i_outer * TILE_I + i_inner;
          let j = j_outer * TILE_J + j_inner;

          // Reduction over k for this (i, j)
          let cij =
            for (k, sum_k): (u32, s32) in u32:0..M {
              let prod = A[i][k] * B[k][j];
              sum_k + prod
            }(s32:0);

          // Update C[i, j] while leaving other entries unchanged.
          let row = C_accum_inner[i];
          let new_row = update(row, j, cij);
          let new_C = update(C_accum_inner, i, new_row);

          new_C
        }(C_accum_outer);

      C_after_inner
    }(mut_C);

  C_after_outer
}
