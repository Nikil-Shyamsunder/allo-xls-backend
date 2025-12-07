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

// -----------------------------------------------------------------------------
// Very dense 16×16 block test in top-left of 32×32.
// A_HARD, B_HARD: dense 16×16 blocks with values in [-5, 5].
// C_HARD_EXPECT: exact product A_HARD × B_HARD.
// -----------------------------------------------------------------------------

// --- A_HARD rows (top-left 16×16 dense) -------------------------------------

const A_HARD_ROW0 = s32[32]:[
  5, -4, -5, -1, -2, -2, -3, -4,
  5, 3, -4, 4, 1, -5, -5, -4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW1 = s32[32]:[
  -2, -2, 3, 4, -5, 3, -2, 5,
  3, 1, -2, 2, 4, -1, -5, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW2 = s32[32]:[
  1, 0, -1, -3, -2, 0, -4, -4,
  1, -4, 0, 0, 4, -1, -5, 2,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW3 = s32[32]:[
  3, -4, 1, -4, 3, -1, 5, 4,
  0, 4, -2, -4, -5, 5, -2, -1,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW4 = s32[32]:[
  -4, -2, -4, 1, -1, 2, 5, 0,
  -3, 0, 0, -2, 5, -1, 5, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW5 = s32[32]:[
  -4, 4, 5, -3, 3, -2, -3, 2,
  1, -1, 5, 3, -2, 5, 0, -5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW6 = s32[32]:[
  -2, -5, 0, 1, -1, -4, -2, 4,
  0, -2, 5, 2, 1, 5, 2, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW7 = s32[32]:[
  -1, -3, -2, 3, 3, -1, 4, 1,
  4, 1, 0, -2, -3, 3, 2, -4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW8 = s32[32]:[
  -5, -4, -3, 5, -3, 5, 1, 4,
  -4, 1, 1, 4, 2, 3, -1, 3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW9 = s32[32]:[
  -5, 5, -4, 5, 3, -1, 5, 0,
  -4, -1, 1, -3, 2, -5, -1, 3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW10 = s32[32]:[
  -3, 3, -4, 5, -1, 5, 3, 4,
  -2, -3, 0, -3, 3, 3, -5, 4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW11 = s32[32]:[
  0, 2, -5, -4, 0, -1, -2, -5,
  -2, 4, -4, -4, 2, -4, 3, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW12 = s32[32]:[
  -3, 5, 2, 3, -3, -1, 3, 4,
  1, -2, 3, -2, -1, 1, 5, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW13 = s32[32]:[
  0, 2, 3, 2, -4, -2, -2, -4,
  0, -5, 4, 3, -2, 4, -2, -5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW14 = s32[32]:[
  -4, 5, -5, -2, -4, -5, 0, -4,
  3, -2, -1, 5, 2, -2, 3, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD_ROW15 = s32[32]:[
  4, 4, 2, -2, 2, 1, -2, -4,
  -4, 5, 1, 0, 1, 1, 2, -5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const A_HARD = s32[32][32]:[
  A_HARD_ROW0,
  A_HARD_ROW1,
  A_HARD_ROW2,
  A_HARD_ROW3,
  A_HARD_ROW4,
  A_HARD_ROW5,
  A_HARD_ROW6,
  A_HARD_ROW7,
  A_HARD_ROW8,
  A_HARD_ROW9,
  A_HARD_ROW10,
  A_HARD_ROW11,
  A_HARD_ROW12,
  A_HARD_ROW13,
  A_HARD_ROW14,
  A_HARD_ROW15,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
];

// --- B_HARD rows (top-left 16×16 dense) -------------------------------------

const B_HARD_ROW0 = s32[32]:[
  5, 5, 5, -4, -5, 1, 0, -4,
  -2, -2, -2, 3, 2, -3, 1, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW1 = s32[32]:[
  -1, 2, -2, -4, 2, 3, -4, -5,
  5, 3, -5, -4, -2, -3, 1, 2,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW2 = s32[32]:[
  2, -2, 1, -5, -3, 1, -5, 1,
  -1, 2, -1, 1, 3, 5, 2, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW3 = s32[32]:[
  -2, -1, -2, -5, 4, 3, -5, 0,
  -5, -5, 4, 2, 3, 3, -3, -5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW4 = s32[32]:[
  3, -4, -3, -4, 4, -4, 5, -2,
  1, -4, 4, -2, 4, 4, -5, 4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW5 = s32[32]:[
  -4, 1, 5, 4, 4, 3, 0, -1,
  -2, 5, 0, -2, -1, 1, -3, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW6 = s32[32]:[
  5, -1, 2, 0, -4, -5, 2, 4,
  4, -4, -4, 3, -2, 3, -1, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW7 = s32[32]:[
  0, -4, -2, 0, -1, -3, 2, 3,
  -1, 4, 5, 3, -5, 5, 3, -1,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW8 = s32[32]:[
  5, -4, -3, -1, -4, -4, 3, -3,
  -1, -1, 4, -2, 0, -2, 5, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW9 = s32[32]:[
  -1, 3, 2, -1, -5, -4, 5, 1,
  -1, -5, -5, 0, -3, 5, -1, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW10 = s32[32]:[
  2, 3, 1, 3, -5, -4, -4, -3,
  3, -5, 0, 4, 3, -3, 1, -3,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW11 = s32[32]:[
  -5, -1, 0, -5, 0, -2, 5, -2,
  5, -4, 0, 3, 1, 4, -3, -2,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW12 = s32[32]:[
  -3, -3, 1, -5, -3, 0, 1, 5,
  -2, -1, -3, -4, 1, -5, 2, -2,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW13 = s32[32]:[
  -2, 2, 0, -1, -2, -2, -5, 5,
  -2, 1, 0, -1, -4, -1, 0, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW14 = s32[32]:[
  3, 1, 5, 3, 0, -5, -4, -1,
  -3, 4, -1, -5, -4, 4, 1, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD_ROW15 = s32[32]:[
  0, 1, 4, 3, -4, 1, 4, -2,
  -1, -5, 1, -5, 3, 3, 5, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const B_HARD = s32[32][32]:[
  B_HARD_ROW0,
  B_HARD_ROW1,
  B_HARD_ROW2,
  B_HARD_ROW3,
  B_HARD_ROW4,
  B_HARD_ROW5,
  B_HARD_ROW6,
  B_HARD_ROW7,
  B_HARD_ROW8,
  B_HARD_ROW9,
  B_HARD_ROW10,
  B_HARD_ROW11,
  B_HARD_ROW12,
  B_HARD_ROW13,
  B_HARD_ROW14,
  B_HARD_ROW15,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
];

// --- C_HARD_EXPECT rows = A_HARD × B_HARD (precomputed) ---------------------

const C_HARD_ROW0 = s32[32]:[
  -6, 4, -25, -41, -14, 21, 118, -38,
  1, -55, -2, 43, 32, -69, -16, -35,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW1 = s32[32]:[
  -72, -58, -37, -50, 3, 43, 3, 55,
  -41, 31, 37, 43, -11, 6, 17, -45,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW2 = s32[32]:[
  -33, 5, -8, -1, -4, 72, 14, -20,
  10, 3, -6, -26, 56, -112, 32, 37,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW3 = s32[32]:[
  78, 7, 7, 24, -59, -73, 46, 58,
  -9, -4, 5, 51, -54, 61, -3, 20,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW4 = s32[32]:[
  -17, -9, 60, 70, -5, -28, 19, 60,
  -23, -17, -25, -62, -27, 23, 8, 5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW5 = s32[32]:[
  -9, -22, -68, -40, 7, -46, -67, -9,
  60, 42, 15, 21, -16, 7, -8, 20,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW6 = s32[32]:[
  -9, -22, -31, 5, -28, -63, -50, 56,
  -19, -4, 59, 54, -20, 2, 11, -36,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW7 = s32[32]:[
  59, -29, -34, 6, 6, -77, -3, 30,
  -23, -22, 46, 29, -33, 36, -29, 4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW8 = s32[32]:[
  -115, -12, 22, 37, 28, 7, 13, 76,
  -29, -24, 34, 22, -28, 61, -33, -11,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW9 = s32[32]:[
  -11, -25, -33, 3, 63, 21, 7, 0,
  38, -55, -12, -28, 24, 9, -31, -24,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW10 = s32[32]:[
  -66, -18, -15, 18, 45, 58, -20, 50,
  -14, 4, 26, -17, -15, -24, -1, 44,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW11 = s32[32]:[
  -1, 37, 15, 33, 34, 17, 31, -14,
  -2, 38, -78, -68, -32, -58, -20, 4,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW12 = s32[32]:[
  27, -4, 13, 29, -29, -21, -81, -5,
  1, 20, 4, -35, -35, 39, 68, 6,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW13 = s32[32]:[
  -24, 29, -37, -38, 14, 42, -125, -18,
  32, 16, -5, 57, 26, -71, -13, -35,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW14 = s32[32]:[
  -26, -7, -45, -10, 18, -11, 3, -28,
  73, 13, -46, -36, -33, -73, 13, -5,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_ROW15 = s32[32]:[
  -6, 67, 35, -49, -1, 4, -41, -27,
  13, 14, -93, -8, -7, -20, -50, -37,
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0,
];

const C_HARD_EXPECT = s32[32][32]:[
  C_HARD_ROW0,
  C_HARD_ROW1,
  C_HARD_ROW2,
  C_HARD_ROW3,
  C_HARD_ROW4,
  C_HARD_ROW5,
  C_HARD_ROW6,
  C_HARD_ROW7,
  C_HARD_ROW8,
  C_HARD_ROW9,
  C_HARD_ROW10,
  C_HARD_ROW11,
  C_HARD_ROW12,
  C_HARD_ROW13,
  C_HARD_ROW14,
  C_HARD_ROW15,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
  ZERO_ROW, ZERO_ROW, ZERO_ROW, ZERO_ROW,
];

// --- Test --------------------------------------------------------------------

#[test]
fn allo_gemm_dense_16x16_block_hard() {
  let got = allo_gemm(A_HARD, B_HARD);
  assert_eq(got, C_HARD_EXPECT);
}
