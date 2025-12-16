module {
  func.func @gemm(%arg0: memref<2x2xi32>, %arg1: memref<2x2xi32>) -> memref<2x2xi32> attributes {itypes = "uu", otypes = "u"} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C", unsigned} : memref<2x2xi32>
    linalg.fill ins(%c0_i32_2 : i32) outs(%alloc : memref<2x2xi32>)
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = 0 to 2 {
          %0 = affine.load %arg0[%arg2, %arg4] {from = "A", unsigned} : memref<2x2xi32>
          %1 = affine.load %arg1[%arg4, %arg3] {from = "B", unsigned} : memref<2x2xi32>
          %2 = arith.extui %0 {unsigned} : i32 to i64
          %3 = arith.extui %1 {unsigned} : i32 to i64
          %4 = arith.muli %2, %3 {unsigned} : i64
          %5 = affine.load %alloc[%arg2, %arg3] {from = "C", unsigned} : memref<2x2xi32>
          %6 = arith.trunci %4 {unsigned} : i64 to i32
          %7 = arith.addi %5, %6 {unsigned} : i32
          affine.store %7, %alloc[%arg2, %arg3] {to = "C"} : memref<2x2xi32>
        } {loop_name = "k"}
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "S_i_j_k_0"}
    return %alloc : memref<2x2xi32>
  }
}

