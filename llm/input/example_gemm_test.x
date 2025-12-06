// A single all-zero row of length 32.
const ZERO_ROW = s32[32]:[
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

// All-zero 32×32 matrix.
const Z32 = s32[32][32]:[
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// A has a 2×2 non-zero block in the top-left, rest zero.
const A_ROW0 = s32[32]:[
  1, 2, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A_ROW1 = s32[32]:[
  3, 4, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A_SIMPLE = s32[32][32]:[
  A_ROW0,
  A_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// B has a 2×2 non-zero block in the top-left, rest zero.
const B_ROW0 = s32[32]:[
  5, 6, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B_ROW1 = s32[32]:[
  7, 8, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B_SIMPLE = s32[32][32]:[
  B_ROW0,
  B_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// Expected product C = A_SIMPLE × B_SIMPLE.
//
// Top-left 2×2 block is:
// [ 19  22 ]
// [ 43  50 ]
// (all other elements are 0)
const C_ROW0 = s32[32]:[
  19, 22, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C_ROW1 = s32[32]:[
  43, 50, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C_EXPECT = s32[32][32]:[
  C_ROW0,
  C_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// New non-zero block in the top-left.
const A2_ROW0 = s32[32]:[
  2, -1, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A2_ROW1 = s32[32]:[
  0, 3, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A2_SIMPLE = s32[32][32]:[
  A2_ROW0,
  A2_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

const B2_ROW0 = s32[32]:[
  4, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B2_ROW1 = s32[32]:[
  1, 5, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B2_SIMPLE = s32[32][32]:[
  B2_ROW0,
  B2_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// Expected product block:
// [ 7  -5 ]
// [ 3  15 ]
const C2_ROW0 = s32[32]:[
  7, -5, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C2_ROW1 = s32[32]:[
  3, 15, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C2_EXPECT = s32[32][32]:[
  C2_ROW0,
  C2_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

#[test]
fn allo_gemm_zero_zero() {
  let a = Z32;
  let b = Z32;
  let got = allo_gemm(a, b);
  assert_eq(got, Z32);
}

#[test]
fn allo_gemm_simple_block() {
  let got = allo_gemm(A_SIMPLE, B_SIMPLE);
  assert_eq(got, C_EXPECT);
}

#[test]
fn allo_gemm_second_nonzero_block() {
  let got = allo_gemm(A2_SIMPLE, B2_SIMPLE);
  assert_eq(got, C2_EXPECT);
}


// 2×2 identity-like block in the top-left.
const I2_ROW0 = s32[32]:[
  1, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const I2_ROW1 = s32[32]:[
  0, 1, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const I2_TOPLEFT = s32[32][32]:[
  I2_ROW0,
  I2_ROW1,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

#[test]
fn allo_gemm_right_identity_subblock() {
  // A_SIMPLE × I2_TOPLEFT = A_SIMPLE (since A_SIMPLE only uses first 2 columns).
  let got = allo_gemm(A_SIMPLE, I2_TOPLEFT);
  assert_eq(got, A_SIMPLE);
}

#[test]
fn allo_gemm_left_identity_subblock() {
  // I2_TOPLEFT × B_SIMPLE = B_SIMPLE (since B_SIMPLE only uses first 2 rows).
  let got = allo_gemm(I2_TOPLEFT, B_SIMPLE);
  assert_eq(got, B_SIMPLE);
}

// ---- Row × column dot-product test -----------------------------------------

// A has only the first row non-zero: [1, 2, 3, 0, ...]
const VEC_ROW = s32[32]:[
  1, 2, 3, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A_VEC = s32[32][32]:[
  VEC_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW
];

// B has only the first column non-zero: [4, 5, 6, 0, ...]^T
const B_VEC_ROW0 = s32[32]:[
  4, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B_VEC_ROW1 = s32[32]:[
  5, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B_VEC_ROW2 = s32[32]:[
  6, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B_VEC = s32[32][32]:[
  B_VEC_ROW0,
  B_VEC_ROW1,
  B_VEC_ROW2,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW
];

// Expected C = A_VEC × B_VEC.
//
// C[0,0] = 1*4 + 2*5 + 3*6 = 32, all other entries are 0.
const C_VEC_ROW0 = s32[32]:[
  32, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C_VEC_EXPECT = s32[32][32]:[
  C_VEC_ROW0,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW
];

#[test]
fn allo_gemm_row_col_dot_product() {
  let got = allo_gemm(A_VEC, B_VEC);
  assert_eq(got, C_VEC_EXPECT);
}


// =========================
// 1) Offset 2×2 Block Test
// =========================
//
// A3 and B3 each have a 2×2 non-zero block at rows 4–5, cols 4–5.
// The expected product has the same 2×2 result block at that offset.

// A3 has:
// row 4: [0 0 0 0  1 2  0 ...]
// row 5: [0 0 0 0  3 4  0 ...]
const A3_ROW4 = s32[32]:[
  0, 0, 0, 0, 1, 2, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A3_ROW5 = s32[32]:[
  0, 0, 0, 0, 3, 4, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const A3_SIMPLE = s32[32][32]:[
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  A3_ROW4,
  A3_ROW5,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW
];

// B3 has:
// row 4: [0 0 0 0  5 6  0 ...]
// row 5: [0 0 0 0  7 8  0 ...]
const B3_ROW4 = s32[32]:[
  0, 0, 0, 0, 5, 6, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B3_ROW5 = s32[32]:[
  0, 0, 0, 0, 7, 8, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const B3_SIMPLE = s32[32][32]:[
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  B3_ROW4,
  B3_ROW5,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW
];

// Expected block at (4,4):
// [ 19  22 ]
// [ 43  50 ]
const C3_ROW4 = s32[32]:[
  0, 0, 0, 0, 19, 22, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C3_ROW5 = s32[32]:[
  0, 0, 0, 0, 43, 50, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0
];

const C3_EXPECT = s32[32][32]:[
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  C3_ROW4,
  C3_ROW5,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW
];

#[test]
fn allo_gemm_offset_block() {
  let got = allo_gemm(A3_SIMPLE, B3_SIMPLE);
  assert_eq(got, C3_EXPECT);
}