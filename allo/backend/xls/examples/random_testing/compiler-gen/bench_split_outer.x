

fn allo_gemm_compiler(arg0: s32[32][32], arg1: s32[32][32]) -> s32[32][32] {
  let C = s32[32][32]:[[s32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:8 {
      for (k, C) in u32:0..u32:32 {
        for (l, C) in u32:0..u32:32 {
          update(C, (j + (i * u32:8)), update(C[(j + (i * u32:8))], k, (C[(j + (i * u32:8))][k] + (arg0[(j + (i * u32:8))][l] * arg1[l][k]))))
        }(C)
      }(C)
    }(C)
  }(C);
  C
}