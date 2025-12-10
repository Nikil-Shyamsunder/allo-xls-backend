

fn gemm(arg0: u32[32][32], arg1: u32[32][32]) -> u32[32][32] {
  let C = u32[32][32]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:32 {
    for (j, C) in u32:0..u32:4 {
      for (k, C) in u32:0..u32:8 {
        for (l, C) in u32:0..u32:32 {
          update(C, i, update(C[i], k, (C[i][k] + (arg0[i][l] * arg1[l][k]))))
        }(C)
      }(C)
    }(C)
  }(C);
  C
}