

fn gemm(arg0: u32[32][32], arg1: u32[32][32], arg2: u32[32][32]) -> u32[32][32] {
  let arg2 = for (i, arg2) in u32:0..u32:32 {
    for (j, arg2) in u32:0..u32:32 {
      for (k, arg2) in u32:0..u32:32 {
        update(arg2, i, update(arg2[i], j, (arg2[i][j] + (arg0[i][k] * arg1[k][j]))))
      }(arg2)
    }(arg2)
  }(arg2);
  arg2
}