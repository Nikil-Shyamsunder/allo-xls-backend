fn allo_gemm(A: s32[32][32], B: s32[32][32]) -> s32[32][32] {
  // Initialize accumulator matrix with any 32x32 array (fully overwritten below).
  let c_init = A;

  let c = for (i, c_acc) in range(u32:0, u32:32) {
    // Build row i by computing each dot product for column j.
    let row_init = c_acc[i];
    let row = for (j, row_acc) in range(u32:0, u32:32) {
      let sum0: s32 = s32:0;
      let sum = for (k, s) in range(u32:0, u32:32) {
        s + A[i][k] * B[k][j]
      }(sum0);
      let row_acc = update(row_acc, j, sum);
      row_acc
    }(row_init);

    let c_acc = update(c_acc, i, row);
    c_acc
  }(c_init);

  c
}