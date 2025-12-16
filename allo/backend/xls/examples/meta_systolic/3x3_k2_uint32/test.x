// Test: Identity-like matrix multiplication
// A = [[1, 2], [3, 4], [5, 6]] (3x2)
// B = [[1, 0, 0], [0, 1, 0]] (2x3)
// C = [[1, 2, 0], [3, 4, 0], [5, 6, 0]] (3x3)
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<u32[2][3]> out;
  b_in: chan<u32[3][2]> out;
  c_out: chan<u32[3][3]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[2][3]>("a_mat");
    let (b_s, b_r) = chan<u32[3][2]>("b_mat");
    let (c_s, c_r) = chan<u32[3][3]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4], [5, 6]]
    let a_mat: u32[2][3] = [
      [u32:1, u32:2],
      [u32:3, u32:4],
      [u32:5, u32:6]
    ];

    // B = [[1, 0, 0], [0, 1, 0]] (identity-like)
    let b_mat: u32[3][2] = [
      [u32:1, u32:0, u32:0],
      [u32:0, u32:1, u32:0]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C[i][j] = sum_k A[i][k] * B[k][j]
    // C[0][0] = 1*1 + 2*0 = 1, C[0][1] = 1*0 + 2*1 = 2, C[0][2] = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:1);
    assert_eq(result[0][1], u32:2);
    assert_eq(result[0][2], u32:0);
    assert_eq(result[1][0], u32:3);
    assert_eq(result[1][1], u32:4);
    assert_eq(result[1][2], u32:0);
    assert_eq(result[2][0], u32:5);
    assert_eq(result[2][1], u32:6);
    assert_eq(result[2][2], u32:0);

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<u32[2][3]> out;
  b_in: chan<u32[3][2]> out;
  c_out: chan<u32[3][3]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[2][3]>("a_mat");
    let (b_s, b_r) = chan<u32[3][2]>("b_mat");
    let (c_s, c_r) = chan<u32[3][3]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4], [5, 6]]
    let a_mat: u32[2][3] = [
      [u32:1, u32:2],
      [u32:3, u32:4],
      [u32:5, u32:6]
    ];

    // B = Zero matrix
    let b_mat: u32[3][2] = [
      [u32:0, u32:0, u32:0],
      [u32:0, u32:0, u32:0]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:0);
    assert_eq(result[0][1], u32:0);
    assert_eq(result[0][2], u32:0);
    assert_eq(result[1][0], u32:0);
    assert_eq(result[1][1], u32:0);
    assert_eq(result[1][2], u32:0);
    assert_eq(result[2][0], u32:0);
    assert_eq(result[2][1], u32:0);
    assert_eq(result[2][2], u32:0);

    send(tok, terminator, true);
  }
}

// Test: Simple matrix multiplication
// A = [[1, 1], [2, 2], [3, 3]] (3x2)
// B = [[1, 2, 3], [1, 2, 3]] (2x3)
// C = [[2, 4, 6], [4, 8, 12], [6, 12, 18]] (3x3)
#[test_proc]
proc test_matmul {
  terminator: chan<bool> out;
  a_in: chan<u32[2][3]> out;
  b_in: chan<u32[3][2]> out;
  c_out: chan<u32[3][3]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[2][3]>("a_mat");
    let (b_s, b_r) = chan<u32[3][2]>("b_mat");
    let (c_s, c_r) = chan<u32[3][3]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 1], [2, 2], [3, 3]]
    let a_mat: u32[2][3] = [
      [u32:1, u32:1],
      [u32:2, u32:2],
      [u32:3, u32:3]
    ];

    // B = [[1, 2, 3], [1, 2, 3]]
    let b_mat: u32[3][2] = [
      [u32:1, u32:2, u32:3],
      [u32:1, u32:2, u32:3]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C[i][j] = sum_k A[i][k] * B[k][j]
    // C[0][0] = 1*1 + 1*1 = 2, C[0][1] = 1*2 + 1*2 = 4, C[0][2] = 1*3 + 1*3 = 6
    // C[1][0] = 2*1 + 2*1 = 4, C[1][1] = 2*2 + 2*2 = 8, C[1][2] = 2*3 + 2*3 = 12
    // C[2][0] = 3*1 + 3*1 = 6, C[2][1] = 3*2 + 3*2 = 12, C[2][2] = 3*3 + 3*3 = 18
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:2);
    assert_eq(result[0][1], u32:4);
    assert_eq(result[0][2], u32:6);
    assert_eq(result[1][0], u32:4);
    assert_eq(result[1][1], u32:8);
    assert_eq(result[1][2], u32:12);
    assert_eq(result[2][0], u32:6);
    assert_eq(result[2][1], u32:12);
    assert_eq(result[2][2], u32:18);

    send(tok, terminator, true);
  }
}
