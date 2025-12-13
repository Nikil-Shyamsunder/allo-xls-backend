// Test: Identity matrix
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<u32[4][4]> out;
  b_in: chan<u32[4][4]> out;
  c_out: chan<u32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[4][4]>("a_mat");
    let (b_s, b_r) = chan<u32[4][4]>("b_mat");
    let (c_s, c_r) = chan<u32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: u32[4][4] = [
      [u32:1, u32:2, u32:3, u32:4],
      [u32:5, u32:6, u32:7, u32:8],
      [u32:9, u32:10, u32:11, u32:12],
      [u32:13, u32:14, u32:15, u32:16]
    ];

    // B = Identity
    let b_mat: u32[4][4] = [
      [u32:1, u32:0, u32:0, u32:0],
      [u32:0, u32:1, u32:0, u32:0],
      [u32:0, u32:0, u32:1, u32:0],
      [u32:0, u32:0, u32:0, u32:1]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = A
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:1);
    assert_eq(result[0][1], u32:2);
    assert_eq(result[0][2], u32:3);
    assert_eq(result[0][3], u32:4);
    assert_eq(result[1][0], u32:5);
    assert_eq(result[1][1], u32:6);
    assert_eq(result[1][2], u32:7);
    assert_eq(result[1][3], u32:8);
    assert_eq(result[2][0], u32:9);
    assert_eq(result[2][1], u32:10);
    assert_eq(result[2][2], u32:11);
    assert_eq(result[2][3], u32:12);
    assert_eq(result[3][0], u32:13);
    assert_eq(result[3][1], u32:14);
    assert_eq(result[3][2], u32:15);
    assert_eq(result[3][3], u32:16);

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<u32[4][4]> out;
  b_in: chan<u32[4][4]> out;
  c_out: chan<u32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[4][4]>("a_mat");
    let (b_s, b_r) = chan<u32[4][4]>("b_mat");
    let (c_s, c_r) = chan<u32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: u32[4][4] = [
      [u32:1, u32:2, u32:3, u32:4],
      [u32:5, u32:6, u32:7, u32:8],
      [u32:9, u32:10, u32:11, u32:12],
      [u32:13, u32:14, u32:15, u32:16]
    ];

    // B = Zero matrix
    let b_mat: u32[4][4] = [
      [u32:0, u32:0, u32:0, u32:0],
      [u32:0, u32:0, u32:0, u32:0],
      [u32:0, u32:0, u32:0, u32:0],
      [u32:0, u32:0, u32:0, u32:0]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:0);
    assert_eq(result[0][1], u32:0);
    assert_eq(result[0][2], u32:0);
    assert_eq(result[0][3], u32:0);
    assert_eq(result[1][0], u32:0);
    assert_eq(result[1][1], u32:0);
    assert_eq(result[1][2], u32:0);
    assert_eq(result[1][3], u32:0);
    assert_eq(result[2][0], u32:0);
    assert_eq(result[2][1], u32:0);
    assert_eq(result[2][2], u32:0);
    assert_eq(result[2][3], u32:0);
    assert_eq(result[3][0], u32:0);
    assert_eq(result[3][1], u32:0);
    assert_eq(result[3][2], u32:0);
    assert_eq(result[3][3], u32:0);

    send(tok, terminator, true);
  }
}

// Test: Simple matrix multiplication
// A = [[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]
// B = [[2, 0, 0, 0], [0, 2, 0, 0], [0, 0, 2, 0], [0, 0, 0, 2]]
// C = [[2, 0, 0, 0], [0, 2, 0, 0], [0, 0, 2, 0], [0, 0, 0, 2]]
#[test_proc]
proc test_matmul {
  terminator: chan<bool> out;
  a_in: chan<u32[4][4]> out;
  b_in: chan<u32[4][4]> out;
  c_out: chan<u32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<u32[4][4]>("a_mat");
    let (b_s, b_r) = chan<u32[4][4]>("b_mat");
    let (c_s, c_r) = chan<u32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
    let a_mat: u32[4][4] = [
      [u32:1, u32:1, u32:1, u32:1],
      [u32:2, u32:2, u32:2, u32:2],
      [u32:3, u32:3, u32:3, u32:3],
      [u32:4, u32:4, u32:4, u32:4]
    ];

    // B = [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]
    let b_mat: u32[4][4] = [
      [u32:1, u32:2, u32:3, u32:4],
      [u32:1, u32:2, u32:3, u32:4],
      [u32:1, u32:2, u32:3, u32:4],
      [u32:1, u32:2, u32:3, u32:4]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = [[4, 8, 12, 16], [8, 16, 24, 32], [12, 24, 36, 48], [16, 32, 48, 64]]
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], u32:4);
    assert_eq(result[0][1], u32:8);
    assert_eq(result[0][2], u32:12);
    assert_eq(result[0][3], u32:16);
    assert_eq(result[1][0], u32:8);
    assert_eq(result[1][1], u32:16);
    assert_eq(result[1][2], u32:24);
    assert_eq(result[1][3], u32:32);
    assert_eq(result[2][0], u32:12);
    assert_eq(result[2][1], u32:24);
    assert_eq(result[2][2], u32:36);
    assert_eq(result[2][3], u32:48);
    assert_eq(result[3][0], u32:16);
    assert_eq(result[3][1], u32:32);
    assert_eq(result[3][2], u32:48);
    assert_eq(result[3][3], u32:64);

    send(tok, terminator, true);
  }
}
