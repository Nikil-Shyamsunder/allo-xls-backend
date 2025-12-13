

fn gemm(arg0: u32[4][4], arg1: u32[4][4]) -> u32[4][4] {
  let C = u32[4][4]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:2 {
    for (j, C) in u32:0..u32:2 {
      for (k, C) in u32:0..u32:4 {
        for (l, C) in u32:0..u32:4 {
          update(C, (j + (i * u32:2)), update(C[(j + (i * u32:2))], k, (C[(j + (i * u32:2))][k] + (arg0[(j + (i * u32:2))][l] * arg1[l][k]))))
        }(C)
      }(C)
    }(C)
  }(C);
  C
}