
#![allow(nonstandard_constant_naming)]

// Lowering of:
//   def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
//      C: int32[32, 32] = 0
//      for i, j, k in allo.grid(32, 32, 32):
//          C[i, j] += A[i, k] * B[k, j]
//      return C
//
// with schedule transformation:
//   s.split("i", factor=8)
//
// Interpretation:
//   - int32  -> s32
//   - A,B,C are 32x32 matrices, represented in DSLX as s32[32][32]
//     (inner dimension = columns, outer = rows).
//   - The loop nest is: for i in 0..32, j in 0..32, k in 0..32
//     C[i,j] = sum_k A[i,k] * B[k,j].
//   - s.split("i", factor=8) corresponds to tiling the i-loop:
//       i_outer in 0..(32/8) = 0..4
//       i_inner in 0..8
//       i = i_outer*8 + i_inner
//     and guarding against out-of-bounds (here, exactly 32 so predicate is trivial
//     but we keep it in the structure).

// Matrix type aliases.
type I32 = s32;
type Mat32x32 = I32[32][32];

pub fn allo_gemm(A: Mat32x32, B: Mat32x32) -> Mat32x32 {
    // Initialize C to all zeros.
    let zero_row: I32[32] = I32[32]:[I32:0, ...];
    let mut_C0: Mat32x32 = Mat32x32:[zero_row, ...];

    // Constants for tiling.
    const I_EXTENT = u32:32;
    const J_EXTENT = u32:32;
    const K_EXTENT = u32:32;
    const I_TILE   = u32:8;
    const I_TILES  = I_EXTENT / I_TILE;  // 4

    // Outer loop over i tiles (i_outer).
    let C_after_i_outer: Mat32x32 =
        for (i_outer, C_accum_i_outer) in u32:0..I_TILES {
            // Inner loop over i within tile (i_inner).
            let C_after_i_inner: Mat32x32 =
                for (i_inner, C_accum_i_inner) in u32:0..I_TILE {
                    let i_full: u32 = i_outer * I_TILE + i_inner;

                    // Bounds guard (important for general split; trivial here).
                    if i_full < I_EXTENT {
                        // Loop over j (columns).
                        let C_after_j: Mat32x32 =
                            for (j, C_accum_j) in u32:0..J_EXTENT {
                                // Accumulate over k: dot product of row i_full of A and column j of B.
                                let sum_ijk: I32 =
                                    for (k, acc) in u32:0..K_EXTENT {
                                        let a_ik: I32 = A[i_full as u5][k as u5];
                                        let b_kj: I32 = B[k as u5][j as u5];
                                        acc + a_ik * b_kj
                                    }(I32:0);

                                // Update C(i_full, j) with the sum.
                                let row_i: I32[32] = C_accum_j[i_full as u5];
                                let row_i_updated: I32[32] = update(row_i, j as u5, sum_ijk);
                                let C_updated: Mat32x32 = update(C_accum_j, i_full as u5, row_i_updated);
                                C_updated
                            }(C_accum_i_inner);
                        C_after_j
                    } else {
                        // Out-of-bounds i_full (does not happen for 32,8, but keep structurally).
                        C_accum_i_inner
                    }
                }(C_accum_i_outer);
            C_after_i_inner
        }(mut_C0);

    C_after_i_outer
}
