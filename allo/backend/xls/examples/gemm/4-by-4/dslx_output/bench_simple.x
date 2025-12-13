

fn gemm(arg0: u32[4][4], arg1: u32[4][4]) -> u32[4][4] {
  let C = u32[4][4]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:4 {
    for (j, C) in u32:0..u32:4 {
      for (k, C) in u32:0..u32:4 {
        update(C, i, update(C[i], j, (C[i][j] + (arg0[i][k] * arg1[k][j]))))
      }(C)
    }(C)
  }(C);
  C
}