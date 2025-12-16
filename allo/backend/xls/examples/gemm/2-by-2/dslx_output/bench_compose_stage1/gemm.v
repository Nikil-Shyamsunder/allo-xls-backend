E1216 14:15:30.077000  826253 ir_scanner.cc:357] IR text with error: 

fn gemm(arg0: u32[2][2], arg1: u32[2][2], arg2: u32[2][2]) -> u32[2][2] {
  let arg2 = for (i, arg2) in u32:0..u32:2 {
    for (j, arg2) in u32:0..u32:2 {
      for (k, arg2) in u32:0..u32:2 {
        update(arg2, i, update(arg2[i], j, (arg2[i][j] + (arg0[i][k] * arg1[k][j]))))
      }(arg2)
    }(arg2)
  }(arg2);
  arg2
}
Error: INVALID_ARGUMENT: Invalid character in IR text "*" @ 7:70
