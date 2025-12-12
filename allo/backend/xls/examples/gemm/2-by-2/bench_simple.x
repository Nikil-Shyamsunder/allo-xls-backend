fn gemm(arg0: u32[2][2], arg1: u32[2][2]) -> u32[2][2] {
  let C = u32[2][2]:[u32[2]:[0, ...], ...];
  let C = for (i, C): (u32, u32[2][2]) in u32:0..u32:2 {
    for (j, C): (u32, u32[2][2]) in u32:0..u32:2 {
      for (k, C): (u32, u32[2][2]) in u32:0..u32:2 {
        update(C, i, update(C[i], j, (C[i][j] + (arg0[i][k] * arg1[k][j]))))
      }(C)
    }(C)
  }(C);
  C
}