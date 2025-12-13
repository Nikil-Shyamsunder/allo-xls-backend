

fn gemm(arg0: u32[4][4], arg1: u32[4][4]) -> u32[4][4] {
  let C = u32[4][4]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:2 {
      for (k, C) in u32:0..u32:2 {
        for (l, C) in u32:0..u32:4 {
          update(C, i, update(C[i], (k + (j * u32:2)), (C[i][(k + (j * u32:2))] + (arg0[i][l] * arg1[l][(k + (j * u32:2))]))))
        }(C)
      }(C)
    }(C)
  }(C);
  C
}