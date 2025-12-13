

fn allo_gemm(arg0: s32[32][32], arg1: s32[32][32]) -> s32[32][32] {
  let C = s32[32][32]:[[s32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:32 {
    for (j, C) in u32:0..u32:4 {
      for (k, C) in u32:0..u32:8 {
        for (l, C) in u32:0..u32:32 {
          update(C, i, update(C[i], (k + (j * u32:8)), (C[i][(k + (j * u32:8))] + (arg0[i][l] * arg1[l][(k + (j * u32:8))]))))
        }(C)
      }(C)
    }(C)
  }(C);
  C
}