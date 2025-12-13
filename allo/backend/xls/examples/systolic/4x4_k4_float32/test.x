// Test: Identity matrix
#[test_proc]
proc test_identity {
  terminator: chan<bool> out;
  a_in: chan<float32::F32[4][4]> out;
  b_in: chan<float32::F32[4][4]> out;
  c_out: chan<float32::F32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[4][4]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[4][4]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: float32::F32[4][4] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)],
      [float32::unflatten(u32:0x40A00000), float32::unflatten(u32:0x40C00000), float32::unflatten(u32:0x40E00000), float32::unflatten(u32:0x41000000)],
      [float32::unflatten(u32:0x41100000), float32::unflatten(u32:0x41200000), float32::unflatten(u32:0x41300000), float32::unflatten(u32:0x41400000)],
      [float32::unflatten(u32:0x41500000), float32::unflatten(u32:0x41600000), float32::unflatten(u32:0x41700000), float32::unflatten(u32:0x41800000)]
    ];

    // B = Identity
    let b_mat: float32::F32[4][4] = [
      [float32::one(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::one(u1:0), float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0), float32::one(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::one(u1:0)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = A
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::one(u1:0));
    assert_eq(result[0][1], float32::unflatten(u32:0x40000000));
    assert_eq(result[0][2], float32::unflatten(u32:0x40400000));
    assert_eq(result[0][3], float32::unflatten(u32:0x40800000));
    assert_eq(result[1][0], float32::unflatten(u32:0x40A00000));
    assert_eq(result[1][1], float32::unflatten(u32:0x40C00000));
    assert_eq(result[1][2], float32::unflatten(u32:0x40E00000));
    assert_eq(result[1][3], float32::unflatten(u32:0x41000000));
    assert_eq(result[2][0], float32::unflatten(u32:0x41100000));
    assert_eq(result[2][1], float32::unflatten(u32:0x41200000));
    assert_eq(result[2][2], float32::unflatten(u32:0x41300000));
    assert_eq(result[2][3], float32::unflatten(u32:0x41400000));
    assert_eq(result[3][0], float32::unflatten(u32:0x41500000));
    assert_eq(result[3][1], float32::unflatten(u32:0x41600000));
    assert_eq(result[3][2], float32::unflatten(u32:0x41700000));
    assert_eq(result[3][3], float32::unflatten(u32:0x41800000));

    send(tok, terminator, true);
  }
}

// Test: Zero matrix
#[test_proc]
proc test_zero_matrix {
  terminator: chan<bool> out;
  a_in: chan<float32::F32[4][4]> out;
  b_in: chan<float32::F32[4][4]> out;
  c_out: chan<float32::F32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[4][4]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[4][4]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let a_mat: float32::F32[4][4] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)],
      [float32::unflatten(u32:0x40A00000), float32::unflatten(u32:0x40C00000), float32::unflatten(u32:0x40E00000), float32::unflatten(u32:0x41000000)],
      [float32::unflatten(u32:0x41100000), float32::unflatten(u32:0x41200000), float32::unflatten(u32:0x41300000), float32::unflatten(u32:0x41400000)],
      [float32::unflatten(u32:0x41500000), float32::unflatten(u32:0x41600000), float32::unflatten(u32:0x41700000), float32::unflatten(u32:0x41800000)]
    ];

    // B = Zero matrix
    let b_mat: float32::F32[4][4] = [
      [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)],
      [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = 0
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::zero(u1:0));
    assert_eq(result[0][1], float32::zero(u1:0));
    assert_eq(result[0][2], float32::zero(u1:0));
    assert_eq(result[0][3], float32::zero(u1:0));
    assert_eq(result[1][0], float32::zero(u1:0));
    assert_eq(result[1][1], float32::zero(u1:0));
    assert_eq(result[1][2], float32::zero(u1:0));
    assert_eq(result[1][3], float32::zero(u1:0));
    assert_eq(result[2][0], float32::zero(u1:0));
    assert_eq(result[2][1], float32::zero(u1:0));
    assert_eq(result[2][2], float32::zero(u1:0));
    assert_eq(result[2][3], float32::zero(u1:0));
    assert_eq(result[3][0], float32::zero(u1:0));
    assert_eq(result[3][1], float32::zero(u1:0));
    assert_eq(result[3][2], float32::zero(u1:0));
    assert_eq(result[3][3], float32::zero(u1:0));

    send(tok, terminator, true);
  }
}

// Test: Simple matrix multiplication
// A = [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
// B = [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]
// C = [[4, 8, 12, 16], [8, 16, 24, 32], [12, 24, 36, 48], [16, 32, 48, 64]]
#[test_proc]
proc test_matmul {
  terminator: chan<bool> out;
  a_in: chan<float32::F32[4][4]> out;
  b_in: chan<float32::F32[4][4]> out;
  c_out: chan<float32::F32[4][4]> in;

  config(terminator: chan<bool> out) {
    let (a_s, a_r) = chan<float32::F32[4][4]>("a_mat");
    let (b_s, b_r) = chan<float32::F32[4][4]>("b_mat");
    let (c_s, c_r) = chan<float32::F32[4][4]>("c_mat");
    spawn SystolicArray(a_r, b_r, c_s);
    (terminator, a_s, b_s, c_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();

    // A = [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
    let a_mat: float32::F32[4][4] = [
      [float32::one(u1:0), float32::one(u1:0), float32::one(u1:0), float32::one(u1:0)],
      [float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40000000)],
      [float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40400000)],
      [float32::unflatten(u32:0x40800000), float32::unflatten(u32:0x40800000), float32::unflatten(u32:0x40800000), float32::unflatten(u32:0x40800000)]
    ];

    // B = [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]
    let b_mat: float32::F32[4][4] = [
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)],
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)],
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)],
      [float32::one(u1:0), float32::unflatten(u32:0x40000000), float32::unflatten(u32:0x40400000), float32::unflatten(u32:0x40800000)]
    ];

    let tok = send(tok, a_in, a_mat);
    let tok = send(tok, b_in, b_mat);

    // Expected: C = [[4, 8, 12, 16], [8, 16, 24, 32], [12, 24, 36, 48], [16, 32, 48, 64]]
    let (tok, result) = recv(tok, c_out);

    assert_eq(result[0][0], float32::unflatten(u32:0x40800000));   // 4.0
    assert_eq(result[0][1], float32::unflatten(u32:0x41000000));   // 8.0
    assert_eq(result[0][2], float32::unflatten(u32:0x41400000));   // 12.0
    assert_eq(result[0][3], float32::unflatten(u32:0x41800000));   // 16.0
    assert_eq(result[1][0], float32::unflatten(u32:0x41000000));   // 8.0
    assert_eq(result[1][1], float32::unflatten(u32:0x41800000));   // 16.0
    assert_eq(result[1][2], float32::unflatten(u32:0x41C00000));   // 24.0
    assert_eq(result[1][3], float32::unflatten(u32:0x42000000));   // 32.0
    assert_eq(result[2][0], float32::unflatten(u32:0x41400000));   // 12.0
    assert_eq(result[2][1], float32::unflatten(u32:0x41C00000));   // 24.0
    assert_eq(result[2][2], float32::unflatten(u32:0x42100000));   // 36.0
    assert_eq(result[2][3], float32::unflatten(u32:0x42400000));   // 48.0
    assert_eq(result[3][0], float32::unflatten(u32:0x41800000));   // 16.0
    assert_eq(result[3][1], float32::unflatten(u32:0x42000000));   // 32.0
    assert_eq(result[3][2], float32::unflatten(u32:0x42400000));   // 48.0
    assert_eq(result[3][3], float32::unflatten(u32:0x42800000));   // 64.0

    send(tok, terminator, true);
  }
}
