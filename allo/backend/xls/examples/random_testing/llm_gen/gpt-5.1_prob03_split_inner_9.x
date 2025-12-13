
const M = u32:32;
const K = u32:32;
const N = u32:32;

const J_INNER = u32:8;
const J_OUTER = N / J_INNER;

// GEMM: C = A x B
// A: s32[M][K] = s32[32][32]
// B: s32[K][N] = s32[32][32]
// C: s32[M][N] = s32[32][32]
// Schedule: loop over j is split into j_outer (0..4) and j_inner (0..8)
fn allo_gemm(A: s32[K][M], B: s32[N][K]) -> s32[N][M] {
  // Initialize C to 0
  let C0: s32[N][M] = s32[N][M]:[s32[M]:[s32:0, ...], ...];

  // i loop: 0 .. M-1
  let C_i: s32[N][M] =
    for (i, C_acc_i): (u32, s32[N][M]) in u32:0..M {
      // j_outer loop: 0 .. (N/J_INNER)-1
      let C_jo: s32[N][M] =
        for (j_outer, C_acc_jo): (u32, s32[N][M]) in u32:0..J_OUTER {
          // j_inner loop: 0 .. J_INNER-1  (this is the split "factor=8")
          let C_ji: s32[N][M] =
            for (j_inner, C_acc_ji): (u32, s32[N][M]) in u32:0..J_INNER {
              let j: u32 = j_outer * J_INNER + j_inner;

              // k reduction loop: 0 .. K-1
              let sum: s32 =
                for (k, acc): (u32, s32) in u32:0..K {
                  acc + A[k][i] * B[j][k]
                }(s32:0);

              // C[i, j] += sum
              let old_val: s32 = C_acc_ji[j][i];
              let new_val: s32 = old_val + sum;
              let C_row_j: s32[M] = update(C_acc_ji[j], i, new_val);
              let C_new: s32[N][M] = update(C_acc_ji, j, C_row_j);
              C_new
            }(C_acc_jo);
          C_ji
        }(C_acc_i);
      C_jo
    }(C0);

  C_i
}
