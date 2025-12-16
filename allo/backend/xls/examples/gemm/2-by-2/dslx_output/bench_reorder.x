

fn gemm(arg0: u32[2][2], arg1: u32[2][2]) -> u32[2][2] {
  let C = u32[2][2]:[[u32:0, ...], ...];
  let C = for (i, C) in u32:0..u32:2 {
    for (j, C) in u32:0..u32:2 {
      for (k, C) in u32:0..u32:2 {
        update(C, j, update(C[j], i, (C[j][i] + (arg0[j][k] * arg1[k][i]))))
      }(C)
    }(C)
  }(C);
  C
}