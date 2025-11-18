fn gemm(arg0: u32[32][32], arg1: u32[32][32]) -> u32[32][32] {
  let C = [[u32:0; 32]; 32];
  let C = for (i, C) in range(u32:0, u32:32) {
    let C = for (j, C) in range(u32:0, u32:32) {
      let C = for (k, C) in range(u32:0, u32:32) {
        let C = update(C, i, update(C[i], j, (C[i][j] + (arg0[i][k] * arg1[k][j]))));
        C
      };
      C
    };
    C
  };
  C
}
