import systolic;

// Test: Identity matrix
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<s32[4][4]> out;
  b_in: chan<s32[4][4]> out;
  c_out: chan<s32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[4][4]>("a_mat");
    let (b_s, b_r) = chan<s32[4][4]>("b_mat");
    let (c_s, c_r) = chan<s32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: s32[4][4] = [
      [s32:1, s32:2, s32:3, s32:4],
      [s32:5, s32:6, s32:7, s32:8],
      [s32:9, s32:10, s32:11, s32:12],
      [s32:13, s32:14, s32:15, s32:16]
    ];

    // B = Identity
    let b_mat: s32[4][4] = [
      [s32:1, s32:0, s32:0, s32:0],
      [s32:0, s32:1, s32:0, s32:0],
      [s32:0, s32:0, s32:1, s32:0],
      [s32:0, s32:0, s32:0, s32:1]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = A
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:1);
    assert_eq(result[0][1], s32:2);
    assert_eq(result[0][2], s32:3);
    assert_eq(result[0][3], s32:4);
    assert_eq(result[1][0], s32:5);
    assert_eq(result[1][1], s32:6);
    assert_eq(result[1][2], s32:7);
    assert_eq(result[1][3], s32:8);
    assert_eq(result[2][0], s32:9);
    assert_eq(result[2][1], s32:10);
    assert_eq(result[2][2], s32:11);
    assert_eq(result[2][3], s32:12);
    assert_eq(result[3][0], s32:13);
    assert_eq(result[3][1], s32:14);
    assert_eq(result[3][2], s32:15);
    assert_eq(result[3][3], s32:16);

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<s32[4][4]> out;
  b_in: chan<s32[4][4]> out;
  c_out: chan<s32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[4][4]>("a_mat");
    let (b_s, b_r) = chan<s32[4][4]>("b_mat");
    let (c_s, c_r) = chan<s32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: s32[4][4] = [
      [s32:1, s32:2, s32:3, s32:4],
      [s32:5, s32:6, s32:7, s32:8],
      [s32:9, s32:10, s32:11, s32:12],
      [s32:13, s32:14, s32:15, s32:16]
    ];

    // B = Zero matrix
    let b_mat: s32[4][4] = [
      [s32:0, s32:0, s32:0, s32:0],
      [s32:0, s32:0, s32:0, s32:0],
      [s32:0, s32:0, s32:0, s32:0],
      [s32:0, s32:0, s32:0, s32:0]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:0);
    assert_eq(result[0][1], s32:0);
    assert_eq(result[0][2], s32:0);
    assert_eq(result[0][3], s32:0);
    assert_eq(result[1][0], s32:0);
    assert_eq(result[1][1], s32:0);
    assert_eq(result[1][2], s32:0);
    assert_eq(result[1][3], s32:0);
    assert_eq(result[2][0], s32:0);
    assert_eq(result[2][1], s32:0);
    assert_eq(result[2][2], s32:0);
    assert_eq(result[2][3], s32:0);
    assert_eq(result[3][0], s32:0);
    assert_eq(result[3][1], s32:0);
    assert_eq(result[3][2], s32:0);
    assert_eq(result[3][3], s32:0);

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
  a_in: chan<s32[4][4]> out;
  b_in: chan<s32[4][4]> out;
  c_out: chan<s32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[4][4]>("a_mat");
    let (b_s, b_r) = chan<s32[4][4]>("b_mat");
    let (c_s, c_r) = chan<s32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
    let a_mat: s32[4][4] = [
      [s32:1, s32:1, s32:1, s32:1],
      [s32:2, s32:2, s32:2, s32:2],
      [s32:3, s32:3, s32:3, s32:3],
      [s32:4, s32:4, s32:4, s32:4]
    ];

    // B = [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]
    let b_mat: s32[4][4] = [
      [s32:1, s32:2, s32:3, s32:4],
      [s32:1, s32:2, s32:3, s32:4],
      [s32:1, s32:2, s32:3, s32:4],
      [s32:1, s32:2, s32:3, s32:4]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = [[4, 8, 12, 16], [8, 16, 24, 32], [12, 24, 36, 48], [16, 32, 48, 64]]
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:4);
    assert_eq(result[0][1], s32:8);
    assert_eq(result[0][2], s32:12);
    assert_eq(result[0][3], s32:16);
    assert_eq(result[1][0], s32:8);
    assert_eq(result[1][1], s32:16);
    assert_eq(result[1][2], s32:24);
    assert_eq(result[1][3], s32:32);
    assert_eq(result[2][0], s32:12);
    assert_eq(result[2][1], s32:24);
    assert_eq(result[2][2], s32:36);
    assert_eq(result[2][3], s32:48);
    assert_eq(result[3][0], s32:16);
    assert_eq(result[3][1], s32:32);
    assert_eq(result[3][2], s32:48);
    assert_eq(result[3][3], s32:64);

    send(tok, terminator, true);
  }
}
