// Test: Identity matrix
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<float32::F32[2][2]> out;
  b_in: chan<float32::F32[2][2]> out;
  c_out: chan<float32::F32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[2][2]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[2][2]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: float32::F32[2][2] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000)],
      [float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)]
    ];

    // B = Identity = [[1, 0], [0, 1]]
    let b_mat: float32::F32[2][2] = [
      [float32::one(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::one(u1:0)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = A = [[1, 2], [3, 4]]
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::one(u1:0));
    assert_eq(result[0][1], float32::unflatten(u32:0x40000000));
    assert_eq(result[1][0], float32::unflatten(u32:0x40400000));
    assert_eq(result[1][1], float32::unflatten(u32:0x40800000));

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<float32::F32[2][2]> out;
  b_in: chan<float32::F32[2][2]> out;
  c_out: chan<float32::F32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[2][2]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[2][2]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: float32::F32[2][2] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000)],
      [float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)]
    ];

    // B = Zero matrix
    let b_mat: float32::F32[2][2] = [
      [float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::zero(u1:0));
    assert_eq(result[0][1], float32::zero(u1:0));
    assert_eq(result[1][0], float32::zero(u1:0));
    assert_eq(result[1][1], float32::zero(u1:0));

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
  a_in: chan<float32::F32[2][2]> out;
  b_in: chan<float32::F32[2][2]> out;
  c_out: chan<float32::F32[2][2]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[2][2]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[2][2]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[2][2]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2], [3, 4]]
    let a_mat: float32::F32[2][2] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000)],
      [float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)]
    ];

    // B = [[2, 0], [1, 2]]
    let b_mat: float32::F32[2][2] = [
      [float32::unflatten(u32:0x40000000), float32::zero(u1:0)],
      [float32::one(u1:0), float32::unflatten(u32:0x40000000)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected:
    // C[0][0] = 1*2 + 2*1 = 4
    // C[0][1] = 1*0 + 2*2 = 4
    // C[1][0] = 3*2 + 4*1 = 10
    // C[1][1] = 3*0 + 4*2 = 8
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::unflatten(u32:0x40800000));  // 4.0
    assert_eq(result[0][1], float32::unflatten(u32:0x40800000));  // 4.0
    assert_eq(result[1][0], float32::unflatten(u32:0x41200000));  // 10.0
    assert_eq(result[1][1], float32::unflatten(u32:0x41000000));  // 8.0

    send(tok, terminator, true);
  }
}
