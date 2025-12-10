

fn gemm(arg0: u32[32][32], arg1: u32[32][32]) -> u32[32][32] {
  let C = u32[32][32]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:8 {
      for (k, C) in u32:0..u32:4 {
        for (l, C) in u32:0..u32:8 {
          for (m, C) in u32:0..u32:32 {
            update(C, j, update(C[j], l, (C[j][l] + (arg0[j][m] * arg1[m][l]))))
          }(C)
        }(C)
      }(C)
    }(C)
  }(C);
  C
}