

fn allo_gemm_compiler(arg0: s32[32][32], arg1: s32[32][32]) -> s32[32][32] {
  let C = s32[32][32]:[[s32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:32 {
    for (j, C) in u32:0..u32:32 {
      for (k, C) in u32:0..u32:32 {
        update(C, i, update(C[i], j, (C[i][j] + (arg0[i][k] * arg1[k][j]))))
      }(C)
    }(C)
  }(C);
  C
}