import float32;

proc PE {
  result_out: chan<float32::F32> out;
  from_west: chan<float32::F32> in;
  from_north: chan<float32::F32> in;
  to_east: chan<float32::F32> out;
  to_south: chan<float32::F32> out;

  config(
    result_out: chan<float32::F32> out,
    from_west: chan<float32::F32> in,
    from_north: chan<float32::F32> in,
    to_east: chan<float32::F32> out,
    to_south: chan<float32::F32> out
  ) {
    (result_out, from_west, from_north, to_east, to_south)
  }

  init { (float32::zero(u1:0), u32:0) }

  next(state: (float32::F32, u32)) {
    let (accum, k) = state;
    let (tok, a) = recv(join(), from_west);
    let (tok, b) = recv(tok, from_north);
    let prod = float32::mul(a, b);
    let new_accum = float32::add(accum, prod);
    let tok = send(tok, to_east, a);
    let tok = send(tok, to_south, b);
    let new_k = k + u32:1;
    let should_output = new_k == u32:4;
    let tok = send_if(tok, result_out, should_output, new_accum);
    let new_state = if should_output {
      (float32::zero(u1:0), u32:0)
    } else {
      (new_accum, new_k)
    };
    new_state
  }
}

pub proc SystolicArray {
  arg0: chan<float32::F32[4][4]> in;
  arg1: chan<float32::F32[4][4]> in;
  out0: chan<float32::F32[4][4]> out;
  from_hor: chan<float32::F32>[u32:4 + u32:1][u32:4] in;
  to_hor: chan<float32::F32>[u32:4 + u32:1][u32:4] out;
  from_vert: chan<float32::F32>[u32:4][u32:4 + u32:1] in;
  to_vert: chan<float32::F32>[u32:4][u32:4 + u32:1] out;
  result_chans_in: chan<float32::F32>[u32:4][u32:4] in;

  config(arg0: chan<float32::F32[4][4]> in, arg1: chan<float32::F32[4][4]> in, out0: chan<float32::F32[4][4]> out) {
    let (to_hor, from_hor) = chan<float32::F32, u32:1>[u32:4 + u32:1][u32:4]("hor_chans");
    let (to_vert, from_vert) = chan<float32::F32, u32:1>[u32:4][u32:4 + u32:1]("vert_chans");
    let (result_chans_out, result_chans_in) = chan<float32::F32, u32:1>[u32:4][u32:4]("result_chans");
    unroll_for! (row, _): (u32, ()) in u32:0..u32:4 {
      unroll_for! (col, _): (u32, ()) in u32:0..u32:4 {
        spawn PE(result_chans_out[row][col], from_hor[row][col], from_vert[row][col], to_hor[row][col + u32:1], to_vert[row + u32:1][col]);
}(());
}(());
    (arg0, arg1, out0, from_hor, to_hor, from_vert, to_vert, result_chans_in)
  }

  init { ([[float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)]], [[float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)]], u32:0, false) }

  next(state: (float32::F32[4][4], float32::F32[4][4], u32, bool)) {
    let (acc0, acc1, index0, busy) = state;
    let (tok0, a_mat2, b_mat2) = if index0 == u32:0 {
      let (a_tok, a_recv) = recv(token(), arg0);
      let (b_tok, b_recv) = recv(token(), arg1);
      let tok = join(a_tok, b_tok);
      (tok, a_recv, b_recv)
    } else {
      (token(), acc0, acc1)
    };
    let tok_a0 = if index0 < u32:4 {
      send(tok0, to_hor[u32:0][u32:0], a_mat2[u32:0][index0])
    } else {
      tok0
    };
    let tok_a1 = if index0 < u32:4 {
      send(tok_a0, to_hor[u32:1][u32:0], a_mat2[u32:1][index0])
    } else {
      tok_a0
    };
    let tok_a2 = if index0 < u32:4 {
      send(tok_a1, to_hor[u32:2][u32:0], a_mat2[u32:2][index0])
    } else {
      tok_a1
    };
    let tok_a3 = if index0 < u32:4 {
      send(tok_a2, to_hor[u32:3][u32:0], a_mat2[u32:3][index0])
    } else {
      tok_a2
    };
    let tok1 = tok_a3;
    let tok_b0 = if index0 < u32:4 {
      send(tok0, to_vert[u32:0][u32:0], b_mat2[index0][u32:0])
    } else {
      tok0
    };
    let tok_b1 = if index0 < u32:4 {
      send(tok_b0, to_vert[u32:0][u32:1], b_mat2[index0][u32:1])
    } else {
      tok_b0
    };
    let tok_b2 = if index0 < u32:4 {
      send(tok_b1, to_vert[u32:0][u32:2], b_mat2[index0][u32:2])
    } else {
      tok_b1
    };
    let tok_b3 = if index0 < u32:4 {
      send(tok_b2, to_vert[u32:0][u32:3], b_mat2[index0][u32:3])
    } else {
      tok_b2
    };
    let tok2 = tok_b3;
    recv_non_blocking(token(), from_hor[u32:0][u32:4], float32::zero(u1:0));
    recv_non_blocking(token(), from_hor[u32:1][u32:4], float32::zero(u1:0));
    recv_non_blocking(token(), from_hor[u32:2][u32:4], float32::zero(u1:0));
    recv_non_blocking(token(), from_hor[u32:3][u32:4], float32::zero(u1:0));
    recv_non_blocking(token(), from_vert[u32:4][u32:0], float32::zero(u1:0));
    recv_non_blocking(token(), from_vert[u32:4][u32:1], float32::zero(u1:0));
    recv_non_blocking(token(), from_vert[u32:4][u32:2], float32::zero(u1:0));
    recv_non_blocking(token(), from_vert[u32:4][u32:3], float32::zero(u1:0));
    let tok3 = join(tok1, tok2);
    if index0 == u32:4 {
      let (t00, c00) = recv(tok3, result_chans_in[u32:0][u32:0]);
      let (t01, c01) = recv(t00, result_chans_in[u32:0][u32:1]);
      let (t02, c02) = recv(t01, result_chans_in[u32:0][u32:2]);
      let (t03, c03) = recv(t02, result_chans_in[u32:0][u32:3]);
      let (t10, c10) = recv(t03, result_chans_in[u32:1][u32:0]);
      let (t11, c11) = recv(t10, result_chans_in[u32:1][u32:1]);
      let (t12, c12) = recv(t11, result_chans_in[u32:1][u32:2]);
      let (t13, c13) = recv(t12, result_chans_in[u32:1][u32:3]);
      let (t20, c20) = recv(t13, result_chans_in[u32:2][u32:0]);
      let (t21, c21) = recv(t20, result_chans_in[u32:2][u32:1]);
      let (t22, c22) = recv(t21, result_chans_in[u32:2][u32:2]);
      let (t23, c23) = recv(t22, result_chans_in[u32:2][u32:3]);
      let (t30, c30) = recv(t23, result_chans_in[u32:3][u32:0]);
      let (t31, c31) = recv(t30, result_chans_in[u32:3][u32:1]);
      let (t32, c32) = recv(t31, result_chans_in[u32:3][u32:2]);
      let (t33, c33) = recv(t32, result_chans_in[u32:3][u32:3]);
      let c = [[c00, c01, c02, c03], [c10, c11, c12, c13], [c20, c21, c22, c23], [c30, c31, c32, c33]];
      let tok_send = send(t33, out0, c);
      ([[float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)]], [[float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0), float32::zero(u1:0)]], u32:0, false)
    } else {
      (a_mat2, b_mat2, index0 + u32:1, true)
    }
  }
}