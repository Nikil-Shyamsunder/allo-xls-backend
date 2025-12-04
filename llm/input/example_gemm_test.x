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