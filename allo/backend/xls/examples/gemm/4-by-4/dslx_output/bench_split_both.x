

fn gemm(arg0: u32[4][4], arg1: u32[4][4]) -> u32[4][4] {
  let C = u32[4][4]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:2 {
    for (j, C) in u32:0..u32:2 {
      for (k, C) in u32:0..u32:2 {
        for (l, C) in u32:0..u32:2 {
          for (m, C) in u32:0..u32:4 {
            update(C, (j + (i * u32:2)), update(C[(j + (i * u32:2))], (l + (k * u32:2)), (C[(j + (i * u32:2))][(l + (k * u32:2))] + (arg0[(j + (i * u32:2))][m] * arg1[m][(l + (k * u32:2))]))))
          }(C)
        }(C)
      }(C)
    }(C)
  }(C);
  C
}