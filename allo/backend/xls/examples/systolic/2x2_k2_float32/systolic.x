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
    let should_output = new_k == u32:2;
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
  arg0: chan<float32::F32[2][2]> in;
  arg1: chan<float32::F32[2][2]> in;
  out0: chan<float32::F32[2][2]> out;
  from_hor: chan<float32::F32>[u32:2 + u32:1][u32:2] in;
  to_hor: chan<float32::F32>[u32:2 + u32:1][u32:2] out;
  from_vert: chan<float32::F32>[u32:2][u32:2 + u32:1] in;
  to_vert: chan<float32::F32>[u32:2][u32:2 + u32:1] out;
  result_chans_in: chan<float32::F32>[u32:2][u32:2] in;

  config(arg0: chan<float32::F32[2][2]> in, arg1: chan<float32::F32[2][2]> in, out0: chan<float32::F32[2][2]> out) {
    let (to_hor, from_hor) = chan<float32::F32, u32:1>[u32:2 + u32:1][u32:2]("hor_chans");
    let (to_vert, from_vert) = chan<float32::F32, u32:1>[u32:2][u32:2 + u32:1]("vert_chans");
    let (result_chans_out, result_chans_in) = chan<float32::F32, u32:1>[u32:2][u32:2]("result_chans");
    unroll_for! (row, _): (u32, ()) in u32:0..u32:2 {
      unroll_for! (col, _): (u32, ()) in u32:0..u32:2 {
        spawn PE(result_chans_out[row][col], from_hor[row][col], from_vert[row][col], to_hor[row][col + u32:1], to_vert[row + u32:1][col]);
}(());
}(());
    (arg0, arg1, out0, from_hor, to_hor, from_vert, to_vert, result_chans_in)
  }

  init { ([[float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0)]], [[float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0)]], u32:0, false) }

  next(state: (float32::F32[2][2], float32::F32[2][2], u32, bool)) {
    let (acc0, acc1, index0, busy) = state;
    let (tok0, a_mat2, b_mat2) = if index0 == u32:0 {
      let (a_tok, a_recv) = recv(token(), arg0);
      let (b_tok, b_recv) = recv(token(), arg1);
      let tok = join(a_tok, b_tok);
      (tok, a_recv, b_recv)
    } else {
      (token(), acc0, acc1)
    };
    let tok_a0 = if index0 < u32:2 {
      send(tok0, to_hor[u32:0][u32:0], a_mat2[u32:0][index0])
    } else {
      tok0
    };
    let tok_a1 = if index0 < u32:2 {
      send(tok_a0, to_hor[u32:1][u32:0], a_mat2[u32:1][index0])
    } else {
      tok_a0
    };
    let tok1 = tok_a1;
    let tok_b0 = if index0 < u32:2 {
      send(tok0, to_vert[u32:0][u32:0], b_mat2[index0][u32:0])
    } else {
      tok0
    };
    let tok_b1 = if index0 < u32:2 {
      send(tok_b0, to_vert[u32:0][u32:1], b_mat2[index0][u32:1])
    } else {
      tok_b0
    };
    let tok2 = tok_b1;
    let _ = recv_non_blocking(token(), from_hor[u32:0][u32:2], float32::zero(u1:0));
    let _ = recv_non_blocking(token(), from_hor[u32:1][u32:2], float32::zero(u1:0));
    let _ = recv_non_blocking(token(), from_vert[u32:2][u32:0], float32::zero(u1:0));
    let _ = recv_non_blocking(token(), from_vert[u32:2][u32:1], float32::zero(u1:0));
    let tok3 = join(tok1, tok2);
    if index0 == u32:2 {
      let (t00, c00) = recv(tok3, result_chans_in[u32:0][u32:0]);
      let (t01, c01) = recv(t00, result_chans_in[u32:0][u32:1]);
      let (t10, c10) = recv(t01, result_chans_in[u32:1][u32:0]);
      let (t11, c11) = recv(t10, result_chans_in[u32:1][u32:1]);
      let c = [[c00, c01], [c10, c11]];
      let tok_send = send(t11, out0, c);
      ([[float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0)]], [[float32::zero(u1:0), float32::zero(u1:0)], [float32::zero(u1:0), float32::zero(u1:0)]], u32:0, false)
    } else {
      (a_mat2, b_mat2, index0 + u32:1, true)
    }
  }
}