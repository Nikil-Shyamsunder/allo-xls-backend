// Test suite for 4x4 GEMM implementations (3-argument version)
// This file can be appended to gemm implementations with signature:
// fn gemm(arg0: u32[4][4], arg1: u32[4][4], arg2: u32[4][4]) -> u32[4][4]

// Helper function to create zero matrix
fn zero_matrix() -> u32[4][4] {
  u32[4][4]:[[u32:0, ...], ...]
}

// Helper function to create identity matrix
fn identity_matrix() -> u32[4][4] {
  let zeros = zero_matrix();
  let row0 = update(zeros[0], 0, u32:1);
  let row1 = update(zeros[1], 1, u32:1);
  let row2 = update(zeros[2], 2, u32:1);
  let row3 = update(zeros[3], 3, u32:1);

  let identity = update(zeros, 0, row0);
  let identity = update(identity, 1, row1);
  let identity = update(identity, 2, row2);
  let identity = update(identity, 3, row3);

  identity
}

// Helper to create a simple test matrix with small values
fn simple_matrix() -> u32[4][4] {
  let zeros = zero_matrix();
  let row0 = update(zeros[0], 0, u32:1);
  let row0 = update(row0, 1, u32:2);

  let row1 = update(zeros[1], 0, u32:3);
  let row1 = update(row1, 1, u32:4);

  let result = update(zeros, 0, row0);
  let result = update(result, 1, row1);
  result
}

#[test]
fn test_zero_multiplication() {
  // A * 0 = 0 for any matrix A
  let A = simple_matrix();
  let zero = zero_matrix();
  let C_init = zero_matrix();
  let result = gemm(A, zero, C_init);

  // Check that result is all zeros
  assert_eq(result[0][0], u32:0);
  assert_eq(result[0][1], u32:0);
  assert_eq(result[1][0], u32:0);
  assert_eq(result[1][1], u32:0);
  assert_eq(result[3][3], u32:0);
}

#[test]
fn test_identity_multiplication() {
  // A * I = A for any matrix A
  let A = simple_matrix();
  let I = identity_matrix();
  let C_init = zero_matrix();
  let result = gemm(A, I, C_init);

  // Result should equal A (check the elements we set)
  assert_eq(result[0][0], u32:1);
  assert_eq(result[0][1], u32:2);
  assert_eq(result[1][0], u32:3);
  assert_eq(result[1][1], u32:4);
}

#[test]
fn test_simple_multiplication() {
  let zeros = zero_matrix();

  // Create matrix A
  let row0_A = update(zeros[0], 0, u32:1);
  let row0_A = update(row0_A, 1, u32:2);
  let row1_A = update(zeros[1], 0, u32:3);
  let row1_A = update(row1_A, 1, u32:4);
  let A = update(zeros, 0, row0_A);
  let A = update(A, 1, row1_A);

  // Create matrix B
  let row0_B = update(zeros[0], 0, u32:1);
  let row0_B = update(row0_B, 1, u32:0);
  let row1_B = update(zeros[1], 0, u32:3);
  let row1_B = update(row1_B, 1, u32:5);
  let B = update(zeros, 0, row0_B);
  let B = update(B, 1, row1_B);

  let C_init = zero_matrix();
  let result = gemm(A, B, C_init);

  // Expected: C[0][0] = 1*1 + 2*3 = 7
  //          C[0][1] = 1*0 + 2*5 = 10
  //          C[1][0] = 3*1 + 4*3 = 15
  //          C[1][1] = 3*0 + 4*5 = 20
  assert_eq(result[0][0], u32:7);
  assert_eq(result[0][1], u32:10);
  assert_eq(result[1][0], u32:15);
  assert_eq(result[1][1], u32:20);
}

#[test]
fn test_ones_multiplication() {
  let zeros = zero_matrix();

  let row0 = update(zeros[0], 0, u32:1);
  let row0 = update(row0, 1, u32:1);
  let row1 = update(zeros[1], 0, u32:1);
  let row1 = update(row1, 1, u32:1);

  let A = update(zeros, 0, row0);
  let A = update(A, 1, row1);

  let C_init = zero_matrix();
  let result = gemm(A, A, C_init);

  // Expected: all 1s * all 1s in 2x2 block = all 2s
  assert_eq(result[0][0], u32:2);
  assert_eq(result[0][1], u32:2);
  assert_eq(result[1][0], u32:2);
  assert_eq(result[1][1], u32:2);
}

#[test]
fn test_full_matrix_multiplication() {
  // Test a full 4x4 matrix multiplication
  let zeros = zero_matrix();

  // Create matrix A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
  let row0_A = update(zeros[0], 0, u32:1);
  let row0_A = update(row0_A, 1, u32:2);
  let row0_A = update(row0_A, 2, u32:3);
  let row0_A = update(row0_A, 3, u32:4);

  let row1_A = update(zeros[1], 0, u32:5);
  let row1_A = update(row1_A, 1, u32:6);
  let row1_A = update(row1_A, 2, u32:7);
  let row1_A = update(row1_A, 3, u32:8);

  let row2_A = update(zeros[2], 0, u32:9);
  let row2_A = update(row2_A, 1, u32:10);
  let row2_A = update(row2_A, 2, u32:11);
  let row2_A = update(row2_A, 3, u32:12);

  let row3_A = update(zeros[3], 0, u32:13);
  let row3_A = update(row3_A, 1, u32:14);
  let row3_A = update(row3_A, 2, u32:15);
  let row3_A = update(row3_A, 3, u32:16);

  let A = update(zeros, 0, row0_A);
  let A = update(A, 1, row1_A);
  let A = update(A, 2, row2_A);
  let A = update(A, 3, row3_A);

  // Multiply A * I (should give A back)
  let I = identity_matrix();
  let C_init = zero_matrix();
  let result = gemm(A, I, C_init);

  // Verify result equals A
  assert_eq(result[0][0], u32:1);
  assert_eq(result[0][3], u32:4);
  assert_eq(result[3][0], u32:13);
  assert_eq(result[3][3], u32:16);
}
