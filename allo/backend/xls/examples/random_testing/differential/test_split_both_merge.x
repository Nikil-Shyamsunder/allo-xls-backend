// Differential testing: LLM vs Compiler GEMM (split_both_merge)

const N: u32 = u32:32;

// ============================================================================
// LLM-Generated Implementation
// ============================================================================


const M: u32 = u32:32;
const TILE_I: u32 = u32:8;
const TILE_J: u32 = u32:8;

// GEMM kernel:
// C[i, j] = sum_k A[i, k] * B[k, j]
// with Allo schedule:
//   split i by 8 -> (i_outer, i_inner)
//   split j by 8 -> (j_outer, j_inner)
//   reorder loops: i_outer, j_outer, i_inner, j_inner, k
fn allo_gemm_llm(A: s32[M][M], B: s32[M][M]) -> s32[M][M] {
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

// ============================================================================
// Compiler-Generated Implementation (Golden Reference)
// ============================================================================



fn allo_gemm_compiler(arg0: s32[32][32], arg1: s32[32][32]) -> s32[32][32] {
  let C = s32[32][32]:[[s32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:4 {
      for (k, C) in u32:0..u32:8 {
        for (l, C) in u32:0..u32:8 {
          for (m, C) in u32:0..u32:32 {
            update(C, (k + (i * u32:8)), update(C[(k + (i * u32:8))], (l + (j * u32:8)), (C[(k + (i * u32:8))][(l + (j * u32:8))] + (arg0[(k + (i * u32:8))][m] * arg1[m][(l + (j * u32:8))]))))
          }(C)
        }(C)
      }(C)
    }(C)
  }(C);
  C
}
// ============================================================================
// Differential Testing with QuickCheck
// ============================================================================

#[quickcheck(test_count=5)]
fn prop_gemm_split_both_merge_equivalence(A: s32[32][32], B: s32[32][32]) -> bool {
    let result_llm = allo_gemm_llm(A, B);
    let result_compiler = allo_gemm_compiler(A, B);
    result_llm == result_compiler
}
