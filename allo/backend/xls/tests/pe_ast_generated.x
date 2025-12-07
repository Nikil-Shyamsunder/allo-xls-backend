import float32;

type F32 = float32::F32;

proc PE<K: u32> {
  a_in: chan<F32> in;
  b_in: chan<F32> in;
  a_out: chan<F32> out;
  b_out: chan<F32> out;
  c_out: chan<F32> out;

  config(
    a_in: chan<F32> in,
    b_in: chan<F32> in,
    a_out: chan<F32> out,
    b_out: chan<F32> out,
    c_out: chan<F32> out
  ) {
    (a_in, b_in, a_out, b_out, c_out)
  }

  init { (float32::zero(u1:0), u32:0) }

  next(state: (F32, u32)) {
    let (accum, k) = state;
    let (tok, a) = recv(join(), a_in);
    let (tok, b) = recv(tok, b_in);
    let prod = float32::mul(a, b);
    let new_accum = float32::add(accum, prod);
    let tok = send(tok, a_out, a);
    let tok = send(tok, b_out, b);
    let new_k = k + u32:1;
    let tok = if new_k == K {
      send(tok, c_out, new_accum)
    } else {
      tok
    };
    let new_state = if new_k == K {
      (float32::zero(u1:0), u32:0)
    } else {
      (new_accum, new_k)
    };
    new_state
  }
}