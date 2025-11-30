
proc PE<K: u32> {
  a_in: chan<u32> in;
  b_in: chan<u32> in;
  a_out: chan<u32> out;
  b_out: chan<u32> out;
  c_out: chan<u32> out;

  config(
    a_in: chan<u32> in,
    b_in: chan<u32> in,
    a_out: chan<u32> out,
    b_out: chan<u32> out,
    c_out: chan<u32> out
  ) {
    (a_in, b_in, a_out, b_out, c_out)
  }

  init { (u32:0, u32:0) }

  next(state: (u32, u32)) {
    let (accum, k) = state;
    let (tok, a) = recv(join(), a_in);
    let (tok, b) = recv(tok, b_in);
    let prod = a * b;
    let new_accum = accum + prod;
    let tok = send(tok, a_out, a);
    let tok = send(tok, b_out, b);
    let new_k = k + u32:1;
    let tok = if new_k == K {
      send(tok, c_out, new_accum)
    } else {
      tok
    };
    let new_state = if new_k == K {
      (u32:0, u32:0)
    } else {
      (new_accum, new_k)
    };
    new_state
  }
}

pub proc SystolicArray {
  a_row_0: chan<u32> in;
  a_row_1: chan<u32> in;
  b_col_0: chan<u32> in;
  b_col_1: chan<u32> in;
  c_result: chan<u32[2][2]> out;
  a_fifo_0_0_s: chan<u32> out;
  a_fifo_0_0_r: chan<u32> in;
  a_fifo_0_1_s: chan<u32> out;
  a_fifo_0_1_r: chan<u32> in;
  a_fifo_0_2_s: chan<u32> out;
  a_fifo_0_2_r: chan<u32> in;
  a_fifo_1_0_s: chan<u32> out;
  a_fifo_1_0_r: chan<u32> in;
  a_fifo_1_1_s: chan<u32> out;
  a_fifo_1_1_r: chan<u32> in;
  a_fifo_1_2_s: chan<u32> out;
  a_fifo_1_2_r: chan<u32> in;
  b_fifo_0_0_s: chan<u32> out;
  b_fifo_0_0_r: chan<u32> in;
  b_fifo_0_1_s: chan<u32> out;
  b_fifo_0_1_r: chan<u32> in;
  b_fifo_0_2_s: chan<u32> out;
  b_fifo_0_2_r: chan<u32> in;
  b_fifo_1_0_s: chan<u32> out;
  b_fifo_1_0_r: chan<u32> in;
  b_fifo_1_1_s: chan<u32> out;
  b_fifo_1_1_r: chan<u32> in;
  b_fifo_1_2_s: chan<u32> out;
  b_fifo_1_2_r: chan<u32> in;
  c_out_0_0_s: chan<u32> out;
  c_out_0_0_r: chan<u32> in;
  c_out_0_1_s: chan<u32> out;
  c_out_0_1_r: chan<u32> in;
  c_out_1_0_s: chan<u32> out;
  c_out_1_0_r: chan<u32> in;
  c_out_1_1_s: chan<u32> out;
  c_out_1_1_r: chan<u32> in;

  config(
    a_row_0: chan<u32> in,
    a_row_1: chan<u32> in,
    b_col_0: chan<u32> in,
    b_col_1: chan<u32> in,
    c_result: chan<u32[2][2]> out
  ) {
    let (a_fifo_0_0_s, a_fifo_0_0_r) = chan<u32>("a_fifo_0_0");
    let (a_fifo_0_1_s, a_fifo_0_1_r) = chan<u32>("a_fifo_0_1");
    let (a_fifo_0_2_s, a_fifo_0_2_r) = chan<u32>("a_fifo_0_2");
    let (a_fifo_1_0_s, a_fifo_1_0_r) = chan<u32>("a_fifo_1_0");
    let (a_fifo_1_1_s, a_fifo_1_1_r) = chan<u32>("a_fifo_1_1");
    let (a_fifo_1_2_s, a_fifo_1_2_r) = chan<u32>("a_fifo_1_2");
    let (b_fifo_0_0_s, b_fifo_0_0_r) = chan<u32>("b_fifo_0_0");
    let (b_fifo_0_1_s, b_fifo_0_1_r) = chan<u32>("b_fifo_0_1");
    let (b_fifo_0_2_s, b_fifo_0_2_r) = chan<u32>("b_fifo_0_2");
    let (b_fifo_1_0_s, b_fifo_1_0_r) = chan<u32>("b_fifo_1_0");
    let (b_fifo_1_1_s, b_fifo_1_1_r) = chan<u32>("b_fifo_1_1");
    let (b_fifo_1_2_s, b_fifo_1_2_r) = chan<u32>("b_fifo_1_2");
    let (c_out_0_0_s, c_out_0_0_r) = chan<u32>("c_out_0_0");
    let (c_out_0_1_s, c_out_0_1_r) = chan<u32>("c_out_0_1");
    let (c_out_1_0_s, c_out_1_0_r) = chan<u32>("c_out_1_0");
    let (c_out_1_1_s, c_out_1_1_r) = chan<u32>("c_out_1_1");
    spawn PE<u32:4>(a_fifo_0_0_r, b_fifo_0_0_r, a_fifo_0_1_s, b_fifo_0_1_s, c_out_0_0_s);
    spawn PE<u32:4>(a_fifo_0_1_r, b_fifo_1_0_r, a_fifo_0_2_s, b_fifo_1_1_s, c_out_0_1_s);
    spawn PE<u32:4>(a_fifo_1_0_r, b_fifo_0_1_r, a_fifo_1_1_s, b_fifo_0_2_s, c_out_1_0_s);
    spawn PE<u32:4>(a_fifo_1_1_r, b_fifo_1_1_r, a_fifo_1_2_s, b_fifo_1_2_s, c_out_1_1_s);
    (a_row_0, a_row_1, b_col_0, b_col_1, c_result, a_fifo_0_0_s, a_fifo_0_0_r, a_fifo_0_1_s, a_fifo_0_1_r, a_fifo_0_2_s, a_fifo_0_2_r, a_fifo_1_0_s, a_fifo_1_0_r, a_fifo_1_1_s, a_fifo_1_1_r, a_fifo_1_2_s, a_fifo_1_2_r, b_fifo_0_0_s, b_fifo_0_0_r, b_fifo_0_1_s, b_fifo_0_1_r, b_fifo_0_2_s, b_fifo_0_2_r, b_fifo_1_0_s, b_fifo_1_0_r, b_fifo_1_1_s, b_fifo_1_1_r, b_fifo_1_2_s, b_fifo_1_2_r, c_out_0_0_s, c_out_0_0_r, c_out_0_1_s, c_out_0_1_r, c_out_1_0_s, c_out_1_0_r, c_out_1_1_s, c_out_1_1_r)
  }

  init { () }

  next(state: ()) {
    let tok = join();
    let (tok, a_0_0) = recv(tok, a_row_0);
    let tok = send(tok, a_fifo_0_0_s, a_0_0);
    let (tok, a_0_1) = recv(tok, a_row_0);
    let tok = send(tok, a_fifo_0_0_s, a_0_1);
    let (tok, a_0_2) = recv(tok, a_row_0);
    let tok = send(tok, a_fifo_0_0_s, a_0_2);
    let (tok, a_0_3) = recv(tok, a_row_0);
    let tok = send(tok, a_fifo_0_0_s, a_0_3);
    let (tok, a_1_0) = recv(tok, a_row_1);
    let tok = send(tok, a_fifo_1_0_s, a_1_0);
    let (tok, a_1_1) = recv(tok, a_row_1);
    let tok = send(tok, a_fifo_1_0_s, a_1_1);
    let (tok, a_1_2) = recv(tok, a_row_1);
    let tok = send(tok, a_fifo_1_0_s, a_1_2);
    let (tok, a_1_3) = recv(tok, a_row_1);
    let tok = send(tok, a_fifo_1_0_s, a_1_3);
    let (tok, b_0_0) = recv(tok, b_col_0);
    let tok = send(tok, b_fifo_0_0_s, b_0_0);
    let (tok, b_1_0) = recv(tok, b_col_0);
    let tok = send(tok, b_fifo_0_0_s, b_1_0);
    let (tok, b_2_0) = recv(tok, b_col_0);
    let tok = send(tok, b_fifo_0_0_s, b_2_0);
    let (tok, b_3_0) = recv(tok, b_col_0);
    let tok = send(tok, b_fifo_0_0_s, b_3_0);
    let (tok, b_0_1) = recv(tok, b_col_1);
    let tok = send(tok, b_fifo_1_0_s, b_0_1);
    let (tok, b_1_1) = recv(tok, b_col_1);
    let tok = send(tok, b_fifo_1_0_s, b_1_1);
    let (tok, b_2_1) = recv(tok, b_col_1);
    let tok = send(tok, b_fifo_1_0_s, b_2_1);
    let (tok, b_3_1) = recv(tok, b_col_1);
    let tok = send(tok, b_fifo_1_0_s, b_3_1);
    let (tok, c_0_0) = recv(tok, c_out_0_0_r);
    let (tok, c_0_1) = recv(tok, c_out_0_1_r);
    let (tok, c_1_0) = recv(tok, c_out_1_0_r);
    let (tok, c_1_1) = recv(tok, c_out_1_1_r);
    let (tok, _) = recv(tok, a_fifo_0_2_r);
    let (tok, _) = recv(tok, a_fifo_0_2_r);
    let (tok, _) = recv(tok, a_fifo_0_2_r);
    let (tok, _) = recv(tok, a_fifo_0_2_r);
    let (tok, _) = recv(tok, a_fifo_1_2_r);
    let (tok, _) = recv(tok, a_fifo_1_2_r);
    let (tok, _) = recv(tok, a_fifo_1_2_r);
    let (tok, _) = recv(tok, a_fifo_1_2_r);
    let (tok, _) = recv(tok, b_fifo_0_2_r);
    let (tok, _) = recv(tok, b_fifo_0_2_r);
    let (tok, _) = recv(tok, b_fifo_0_2_r);
    let (tok, _) = recv(tok, b_fifo_0_2_r);
    let (tok, _) = recv(tok, b_fifo_1_2_r);
    let (tok, _) = recv(tok, b_fifo_1_2_r);
    let (tok, _) = recv(tok, b_fifo_1_2_r);
    let (tok, _) = recv(tok, b_fifo_1_2_r);
    let C = u32[2][2]:[[c_0_0, c_0_1], [c_1_0, c_1_1]];
    let tok = send(tok, c_result, C);
  }
}
// Test 1: Zero matrix test - multiplying by zero should give zero
#[test_proc]
proc systolic_2x2_zero_test {
  a_row_0: chan<u32> out;
  a_row_1: chan<u32> out;
  b_col_0: chan<u32> out;
  b_col_1: chan<u32> out;
  c_result: chan<u32[2][2]> in;
  terminator: chan<bool> out;

  config(terminator: chan<bool> out) {
    let (a_row_0_out, a_row_0_in) = chan<u32>("a_row_0");
    let (a_row_1_out, a_row_1_in) = chan<u32>("a_row_1");
    let (b_col_0_out, b_col_0_in) = chan<u32>("b_col_0");
    let (b_col_1_out, b_col_1_in) = chan<u32>("b_col_1");
    let (c_result_out, c_result_in) = chan<u32[2][2]>("c_result");
    spawn SystolicArray(a_row_0_in, a_row_1_in, b_col_0_in, b_col_1_in, c_result_out);
    (a_row_0_out, a_row_1_out, b_col_0_out, b_col_1_out, c_result_in, terminator)
  }

  init { () }

  next(state: ()) {
    // Matrix A = [[1, 2, 3, 4], [5, 6, 7, 8]]
    // Matrix B = all zeros (4x2)
    // Expected C = all zeros (2x2)

    let tok = send(token(), a_row_0, u32:1);
    let tok = send(tok, a_row_0, u32:2);
    let tok = send(tok, a_row_0, u32:3);
    let tok = send(tok, a_row_0, u32:4);

    let tok = send(tok, a_row_1, u32:5);
    let tok = send(tok, a_row_1, u32:6);
    let tok = send(tok, a_row_1, u32:7);
    let tok = send(tok, a_row_1, u32:8);

    // All zeros for B
    let tok = send(tok, b_col_0, u32:0);
    let tok = send(tok, b_col_0, u32:0);
    let tok = send(tok, b_col_0, u32:0);
    let tok = send(tok, b_col_0, u32:0);

    let tok = send(tok, b_col_1, u32:0);
    let tok = send(tok, b_col_1, u32:0);
    let tok = send(tok, b_col_1, u32:0);
    let tok = send(tok, b_col_1, u32:0);

    let (tok, result) = recv(tok, c_result);
    assert_eq(result[0][0], u32:0);
    assert_eq(result[0][1], u32:0);
    assert_eq(result[1][0], u32:0);
    assert_eq(result[1][1], u32:0);

    send(tok, terminator, true);
  }
}

// Test 2: Identity-like test - simple values
#[test_proc]
proc systolic_2x2_identity_test {
  a_row_0: chan<u32> out;
  a_row_1: chan<u32> out;
  b_col_0: chan<u32> out;
  b_col_1: chan<u32> out;
  c_result: chan<u32[2][2]> in;
  terminator: chan<bool> out;

  config(terminator: chan<bool> out) {
    let (a_row_0_out, a_row_0_in) = chan<u32>("a_row_0");
    let (a_row_1_out, a_row_1_in) = chan<u32>("a_row_1");
    let (b_col_0_out, b_col_0_in) = chan<u32>("b_col_0");
    let (b_col_1_out, b_col_1_in) = chan<u32>("b_col_1");
    let (c_result_out, c_result_in) = chan<u32[2][2]>("c_result");
    spawn SystolicArray(a_row_0_in, a_row_1_in, b_col_0_in, b_col_1_in, c_result_out);
    (a_row_0_out, a_row_1_out, b_col_0_out, b_col_1_out, c_result_in, terminator)
  }

  init { () }

  next(state: ()) {
    // Matrix A = [[1, 0, 0, 0], [0, 1, 0, 0]]
    // Matrix B = [[1, 0], [0, 1], [0, 0], [0, 0]] (identity-like)
    // Expected C = [[1, 0], [0, 1]] (identity)

    let tok = send(token(), a_row_0, u32:1);
    let tok = send(tok, a_row_0, u32:0);
    let tok = send(tok, a_row_0, u32:0);
    let tok = send(tok, a_row_0, u32:0);

    let tok = send(tok, a_row_1, u32:0);
    let tok = send(tok, a_row_1, u32:1);
    let tok = send(tok, a_row_1, u32:0);
    let tok = send(tok, a_row_1, u32:0);

    // Identity matrix for B (4x2)
    let tok = send(tok, b_col_0, u32:1);
    let tok = send(tok, b_col_0, u32:0);
    let tok = send(tok, b_col_0, u32:0);
    let tok = send(tok, b_col_0, u32:0);

    let tok = send(tok, b_col_1, u32:0);
    let tok = send(tok, b_col_1, u32:1);
    let tok = send(tok, b_col_1, u32:0);
    let tok = send(tok, b_col_1, u32:0);

    let (tok, result) = recv(tok, c_result);
    assert_eq(result[0][0], u32:1);
    assert_eq(result[0][1], u32:0);
    assert_eq(result[1][0], u32:0);
    assert_eq(result[1][1], u32:1);

    send(tok, terminator, true);
  }
}

// Test 3: Non-trivial computation test
#[test_proc]
proc systolic_2x2_compute_test {
  a_row_0: chan<u32> out;
  a_row_1: chan<u32> out;
  b_col_0: chan<u32> out;
  b_col_1: chan<u32> out;
  c_result: chan<u32[2][2]> in;
  terminator: chan<bool> out;

  config(terminator: chan<bool> out) {
    let (a_row_0_out, a_row_0_in) = chan<u32>("a_row_0");
    let (a_row_1_out, a_row_1_in) = chan<u32>("a_row_1");
    let (b_col_0_out, b_col_0_in) = chan<u32>("b_col_0");
    let (b_col_1_out, b_col_1_in) = chan<u32>("b_col_1");
    let (c_result_out, c_result_in) = chan<u32[2][2]>("c_result");
    spawn SystolicArray(a_row_0_in, a_row_1_in, b_col_0_in, b_col_1_in, c_result_out);
    (a_row_0_out, a_row_1_out, b_col_0_out, b_col_1_out, c_result_in, terminator)
  }

  init { () }

  next(state: ()) {
    // Matrix A = [[1, 2, 3, 4], [5, 6, 7, 8]]
    // Matrix B = [[1, 2], [3, 4], [5, 6], [7, 8]]
    // Expected C:
    // C[0][0] = 1*1 + 2*3 + 3*5 + 4*7 = 1 + 6 + 15 + 28 = 50
    // C[0][1] = 1*2 + 2*4 + 3*6 + 4*8 = 2 + 8 + 18 + 32 = 60
    // C[1][0] = 5*1 + 6*3 + 7*5 + 8*7 = 5 + 18 + 35 + 56 = 114
    // C[1][1] = 5*2 + 6*4 + 7*6 + 8*8 = 10 + 24 + 42 + 64 = 140

    let tok = send(token(), a_row_0, u32:1);
    let tok = send(tok, a_row_0, u32:2);
    let tok = send(tok, a_row_0, u32:3);
    let tok = send(tok, a_row_0, u32:4);

    let tok = send(tok, a_row_1, u32:5);
    let tok = send(tok, a_row_1, u32:6);
    let tok = send(tok, a_row_1, u32:7);
    let tok = send(tok, a_row_1, u32:8);

    // B column 0: [1, 3, 5, 7]
    let tok = send(tok, b_col_0, u32:1);
    let tok = send(tok, b_col_0, u32:3);
    let tok = send(tok, b_col_0, u32:5);
    let tok = send(tok, b_col_0, u32:7);

    // B column 1: [2, 4, 6, 8]
    let tok = send(tok, b_col_1, u32:2);
    let tok = send(tok, b_col_1, u32:4);
    let tok = send(tok, b_col_1, u32:6);
    let tok = send(tok, b_col_1, u32:8);

    let (tok, result) = recv(tok, c_result);
    assert_eq(result[0][0], u32:50);
    assert_eq(result[0][1], u32:60);
    assert_eq(result[1][0], u32:114);
    assert_eq(result[1][1], u32:140);

    send(tok, terminator, true);
  }
}
