

fn gemm(arg0: u32[32][32], arg1: u32[32][32]) -> u32[32][32] {
  let C = u32[32][32]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:4 {
      for (k, C) in u32:0..u32:8 {
        for (l, C) in u32:0..u32:8 {
          for (m, C) in u32:0..u32:32 {
            update(C, (k + (i * u32:8)), update(C[(k + (i * u32:8))], (l + (j * u32:8)), (C[(k + (i * u32:8))][(l + (j * u32:8))] + (arg0[(k + (i * u32:8))][m] * arg1[m][(l + (j * u32:8))]))))
          }(C)
        }(C)
      }(C)
    }(C)
  }(C);
  C
}