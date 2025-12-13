// Test suite for 32x32 GEMM implementations (2-argument version)
// This file can be appended to gemm implementations with signature:
// fn allo_gemm(arg0: s32[32][32], arg1: s32[32][32]) -> s32[32][32]

// Helper function to create zero matrix
fn zero_matrix() -> s32[32][32] {
  s32[32][32]:[[s32:0, ...], ...]
}

// Helper function to create identity matrix
fn identity_matrix() -> s32[32][32] {
  let zeros = zero_matrix();
  let row0 = update(zeros[0], 0, s32:1);
  let row1 = update(zeros[1], 1, s32:1);
  let row2 = update(zeros[2], 2, s32:1);
  let row3 = update(zeros[3], 3, s32:1);

  let identity = update(zeros, 0, row0);
  let identity = update(identity, 1, row1);
  let identity = update(identity, 2, row2);
  let identity = update(identity, 3, row3);

  identity
}

// Helper to create a simple test matrix with small values
fn simple_matrix() -> s32[32][32] {
  // Create a matrix where the top-left 2x2 has values
  let zeros = zero_matrix();
  // Set first row to [1, 2, 0, 0, ...]
  let row0 = update(zeros[0], 0, s32:1);
  let row0 = update(row0, 1, s32:2);

  // Set second row to [3, 4, 0, 0, ...]
  let row1 = update(zeros[1], 0, s32:3);
  let row1 = update(row1, 1, s32:4);

  let result = update(zeros, 0, row0);
  let result = update(result, 1, row1);
  result
}

#[test]
fn test_zero_multiplication() {
  // A * 0 = 0 for any matrix A
  let A = simple_matrix();
  let zero = zero_matrix();
  let result = allo_gemm(A, zero);

  // Check that result is all zeros
  assert_eq(result[0][0], s32:0);
  assert_eq(result[0][1], s32:0);
  assert_eq(result[1][0], s32:0);
  assert_eq(result[1][1], s32:0);
  assert_eq(result[3][3], s32:0);
}

#[test]
fn test_identity_multiplication() {
  // A * I = A for any matrix A
  let A = simple_matrix();
  let I = identity_matrix();
  let result = allo_gemm(A, I);

  // Result should equal A (check the elements we set)
  assert_eq(result[0][0], s32:1);
  assert_eq(result[0][1], s32:2);
  assert_eq(result[1][0], s32:3);
  assert_eq(result[1][1], s32:4);
}

#[test]
fn test_simple_multiplication() {
  // Test: [1, 2, 0, ...]  *  [1, 0, 0, ...]  =  [7, 10, 0, ...]
  //       [3, 4, 0, ...]     [3, 5, 0, ...]     [15, 20, 0, ...]
  //       [0, 0, 0, ...]     [0, 0, 0, ...]     [0, 0, 0, ...]
  //       ...                ...                ...

  let zeros = zero_matrix();

  // Create matrix A
  let row0_A = update(zeros[0], 0, s32:1);
  let row0_A = update(row0_A, 1, s32:2);
  let row1_A = update(zeros[1], 0, s32:3);
  let row1_A = update(row1_A, 1, s32:4);
  let A = update(zeros, 0, row0_A);
  let A = update(A, 1, row1_A);

  // Create matrix B
  let row0_B = update(zeros[0], 0, s32:1);
  let row0_B = update(row0_B, 1, s32:0);
  let row1_B = update(zeros[1], 0, s32:3);
  let row1_B = update(row1_B, 1, s32:5);
  let B = update(zeros, 0, row0_B);
  let B = update(B, 1, row1_B);

  let result = allo_gemm(A, B);

  // Expected: C[0][0] = 1*1 + 2*3 = 7
  //          C[0][1] = 1*0 + 2*5 = 10
  //          C[1][0] = 3*1 + 4*3 = 15
  //          C[1][1] = 3*0 + 4*5 = 20
  assert_eq(result[0][0], s32:7);
  assert_eq(result[0][1], s32:10);
  assert_eq(result[1][0], s32:15);
  assert_eq(result[1][1], s32:20);
}

#[test]
fn test_ones_multiplication() {
  // Create 2x2 submatrix of all 1s (rest zeros)
  let zeros = zero_matrix();

  let row0 = update(zeros[0], 0, s32:1);
  let row0 = update(row0, 1, s32:1);
  let row1 = update(zeros[1], 0, s32:1);
  let row1 = update(row1, 1, s32:1);

  let A = update(zeros, 0, row0);
  let A = update(A, 1, row1);

  let result = allo_gemm(A, A);

  // Expected: all 1s * all 1s in 2x2 block = all 2s
  // C[0][0] = 1*1 + 1*1 = 2
  // C[0][1] = 1*1 + 1*1 = 2
  // C[1][0] = 1*1 + 1*1 = 2
  // C[1][1] = 1*1 + 1*1 = 2
  assert_eq(result[0][0], s32:2);
  assert_eq(result[0][1], s32:2);
  assert_eq(result[1][0], s32:2);
  assert_eq(result[1][1], s32:2);
}
