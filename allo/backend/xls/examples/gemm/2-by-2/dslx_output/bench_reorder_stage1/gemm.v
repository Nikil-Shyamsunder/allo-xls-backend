E1216 14:15:30.170668  826261 ir_scanner.cc:357] IR text with error: 

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
Error: INVALID_ARGUMENT: Invalid character in IR text ";" @ 4:40
