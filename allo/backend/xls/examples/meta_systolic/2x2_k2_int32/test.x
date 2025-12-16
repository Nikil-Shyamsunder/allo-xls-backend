import systolic;

// Test: Identity matrix
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<s32[2][2]> out;
  b_in: chan<s32[2][2]> out;
  c_out: chan<s32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[2][2]>("a_mat");
    let (b_s, b_r) = chan<s32[2][2]>("b_mat");
    let (c_s, c_r) = chan<s32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: s32[2][2] = [[s32:1, s32:2], [s32:3, s32:4]];

    // B = Identity = [[1, 0], [0, 1]]
    let b_mat: s32[2][2] = [[s32:1, s32:0], [s32:0, s32:1]];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = A = [[1, 2], [3, 4]]
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:1);
    assert_eq(result[0][1], s32:2);
    assert_eq(result[1][0], s32:3);
    assert_eq(result[1][1], s32:4);

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<s32[2][2]> out;
  b_in: chan<s32[2][2]> out;
  c_out: chan<s32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[2][2]>("a_mat");
    let (b_s, b_r) = chan<s32[2][2]>("b_mat");
    let (c_s, c_r) = chan<s32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: s32[2][2] = [[s32:1, s32:2], [s32:3, s32:4]];

    // B = Zero matrix
    let b_mat: s32[2][2] = [[s32:0, s32:0], [s32:0, s32:0]];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:0);
    assert_eq(result[0][1], s32:0);
    assert_eq(result[1][0], s32:0);
    assert_eq(result[1][1], s32:0);

    send(tok, terminator, true);
  }
}

// Test: Non-trivial multiplication
// A = [[1, 2], [3, 4]]
// B = [[2, 0], [1, 2]]
// C = [[4, 4], [10, 8]]
#[test_proc]
proc test_matmul {
  terminator: chan<bool> out;
  a_in: chan<s32[2][2]> out;
  b_in: chan<s32[2][2]> out;
  c_out: chan<s32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<s32[2][2]>("a_mat");
    let (b_s, b_r) = chan<s32[2][2]>("b_mat");
    let (c_s, c_r) = chan<s32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: s32[2][2] = [[s32:1, s32:2], [s32:3, s32:4]];

    // B = [[2, 0], [1, 2]]
    let b_mat: s32[2][2] = [[s32:2, s32:0], [s32:1, s32:2]];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected:
    // C[0][0] = 1*2 + 2*1 = 4
    // C[0][1] = 1*0 + 2*2 = 4
    // C[1][0] = 3*2 + 4*1 = 10
    // C[1][1] = 3*0 + 4*2 = 8
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], s32:4);
    assert_eq(result[0][1], s32:4);
    assert_eq(result[1][0], s32:10);
    assert_eq(result[1][1], s32:8);

    send(tok, terminator, true);
  }
}
