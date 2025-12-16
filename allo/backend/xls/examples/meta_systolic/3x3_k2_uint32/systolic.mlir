module {
  func.func @gemm_0_1(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg1[%arg4, 0] {from = "B", unsigned} : memref<2x3xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_2(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg1[%arg4, 1] {from = "B", unsigned} : memref<2x3xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_3(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg1[%arg4, 2] {from = "B", unsigned} : memref<2x3xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_0(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg0[0, %arg4] {from = "A", unsigned} : memref<3x2xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_1(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 0] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_1_2(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 1] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_1_3(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 2] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_1_4(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_0(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg0[1, %arg4] {from = "A", unsigned} : memref<3x2xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_1(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 0] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_2_2(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 1] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_2_3(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 2] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_2_4(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_0(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg0[2, %arg4] {from = "A", unsigned} : memref<3x2xi32>
      allo.stream_put(%arg3, [], %0) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_1(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 0] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_3_2(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 1] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_3_3(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>, %arg4: !allo.stream<i32, 4>, %arg5: !allo.stream<i32, 4>, %arg6: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuuuuu", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c", unsigned} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_0 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc_1 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) {unsigned} : !allo.stream<i32, 4> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) {unsigned} : !allo.stream<i32, 4> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 2] {to = "C"} : memref<3x3xi32>
    return
  }
  func.func @gemm_3_4(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_4_1(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_4_2(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_4_3(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>, %arg3: !allo.stream<i32, 4>) attributes {df.kernel, itypes = "uuuu", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) {unsigned} : !allo.stream<i32, 4> -> i32
      %alloc = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @top(%arg0: memref<3x2xi32>, %arg1: memref<2x3xi32>, %arg2: memref<3x3xi32>) attributes {dataflow, itypes = "uuu"} {
    %0 = allo.stream_construct() {name = "fifo_A_0_0", unsigned} : !allo.stream<i32, 4>
    %1 = allo.stream_construct() {name = "fifo_A_0_1", unsigned} : !allo.stream<i32, 4>
    %2 = allo.stream_construct() {name = "fifo_A_0_2", unsigned} : !allo.stream<i32, 4>
    %3 = allo.stream_construct() {name = "fifo_A_0_3", unsigned} : !allo.stream<i32, 4>
    %4 = allo.stream_construct() {name = "fifo_A_0_4", unsigned} : !allo.stream<i32, 4>
    %5 = allo.stream_construct() {name = "fifo_A_1_0", unsigned} : !allo.stream<i32, 4>
    %6 = allo.stream_construct() {name = "fifo_A_1_1", unsigned} : !allo.stream<i32, 4>
    %7 = allo.stream_construct() {name = "fifo_A_1_2", unsigned} : !allo.stream<i32, 4>
    %8 = allo.stream_construct() {name = "fifo_A_1_3", unsigned} : !allo.stream<i32, 4>
    %9 = allo.stream_construct() {name = "fifo_A_1_4", unsigned} : !allo.stream<i32, 4>
    %10 = allo.stream_construct() {name = "fifo_A_2_0", unsigned} : !allo.stream<i32, 4>
    %11 = allo.stream_construct() {name = "fifo_A_2_1", unsigned} : !allo.stream<i32, 4>
    %12 = allo.stream_construct() {name = "fifo_A_2_2", unsigned} : !allo.stream<i32, 4>
    %13 = allo.stream_construct() {name = "fifo_A_2_3", unsigned} : !allo.stream<i32, 4>
    %14 = allo.stream_construct() {name = "fifo_A_2_4", unsigned} : !allo.stream<i32, 4>
    %15 = allo.stream_construct() {name = "fifo_A_3_0", unsigned} : !allo.stream<i32, 4>
    %16 = allo.stream_construct() {name = "fifo_A_3_1", unsigned} : !allo.stream<i32, 4>
    %17 = allo.stream_construct() {name = "fifo_A_3_2", unsigned} : !allo.stream<i32, 4>
    %18 = allo.stream_construct() {name = "fifo_A_3_3", unsigned} : !allo.stream<i32, 4>
    %19 = allo.stream_construct() {name = "fifo_A_3_4", unsigned} : !allo.stream<i32, 4>
    %20 = allo.stream_construct() {name = "fifo_A_4_0", unsigned} : !allo.stream<i32, 4>
    %21 = allo.stream_construct() {name = "fifo_A_4_1", unsigned} : !allo.stream<i32, 4>
    %22 = allo.stream_construct() {name = "fifo_A_4_2", unsigned} : !allo.stream<i32, 4>
    %23 = allo.stream_construct() {name = "fifo_A_4_3", unsigned} : !allo.stream<i32, 4>
    %24 = allo.stream_construct() {name = "fifo_A_4_4", unsigned} : !allo.stream<i32, 4>
    %25 = allo.stream_construct() {name = "fifo_B_0_0", unsigned} : !allo.stream<i32, 4>
    %26 = allo.stream_construct() {name = "fifo_B_0_1", unsigned} : !allo.stream<i32, 4>
    %27 = allo.stream_construct() {name = "fifo_B_0_2", unsigned} : !allo.stream<i32, 4>
    %28 = allo.stream_construct() {name = "fifo_B_0_3", unsigned} : !allo.stream<i32, 4>
    %29 = allo.stream_construct() {name = "fifo_B_0_4", unsigned} : !allo.stream<i32, 4>
    %30 = allo.stream_construct() {name = "fifo_B_1_0", unsigned} : !allo.stream<i32, 4>
    %31 = allo.stream_construct() {name = "fifo_B_1_1", unsigned} : !allo.stream<i32, 4>
    %32 = allo.stream_construct() {name = "fifo_B_1_2", unsigned} : !allo.stream<i32, 4>
    %33 = allo.stream_construct() {name = "fifo_B_1_3", unsigned} : !allo.stream<i32, 4>
    %34 = allo.stream_construct() {name = "fifo_B_1_4", unsigned} : !allo.stream<i32, 4>
    %35 = allo.stream_construct() {name = "fifo_B_2_0", unsigned} : !allo.stream<i32, 4>
    %36 = allo.stream_construct() {name = "fifo_B_2_1", unsigned} : !allo.stream<i32, 4>
    %37 = allo.stream_construct() {name = "fifo_B_2_2", unsigned} : !allo.stream<i32, 4>
    %38 = allo.stream_construct() {name = "fifo_B_2_3", unsigned} : !allo.stream<i32, 4>
    %39 = allo.stream_construct() {name = "fifo_B_2_4", unsigned} : !allo.stream<i32, 4>
    %40 = allo.stream_construct() {name = "fifo_B_3_0", unsigned} : !allo.stream<i32, 4>
    %41 = allo.stream_construct() {name = "fifo_B_3_1", unsigned} : !allo.stream<i32, 4>
    %42 = allo.stream_construct() {name = "fifo_B_3_2", unsigned} : !allo.stream<i32, 4>
    %43 = allo.stream_construct() {name = "fifo_B_3_3", unsigned} : !allo.stream<i32, 4>
    %44 = allo.stream_construct() {name = "fifo_B_3_4", unsigned} : !allo.stream<i32, 4>
    %45 = allo.stream_construct() {name = "fifo_B_4_0", unsigned} : !allo.stream<i32, 4>
    %46 = allo.stream_construct() {name = "fifo_B_4_1", unsigned} : !allo.stream<i32, 4>
    %47 = allo.stream_construct() {name = "fifo_B_4_2", unsigned} : !allo.stream<i32, 4>
    %48 = allo.stream_construct() {name = "fifo_B_4_3", unsigned} : !allo.stream<i32, 4>
    %49 = allo.stream_construct() {name = "fifo_B_4_4", unsigned} : !allo.stream<i32, 4>
    call @gemm_0_1(%arg0, %arg1, %arg2, %31) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_0_2(%arg0, %arg1, %arg2, %32) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_0_3(%arg0, %arg1, %arg2, %33) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_1_0(%arg0, %arg1, %arg2, %6) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_1_1(%arg0, %arg1, %arg2, %6, %31, %7, %36) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_1_2(%arg0, %arg1, %arg2, %7, %32, %8, %37) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_1_3(%arg0, %arg1, %arg2, %8, %33, %9, %38) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_1_4(%arg0, %arg1, %arg2, %9) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_2_0(%arg0, %arg1, %arg2, %11) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_2_1(%arg0, %arg1, %arg2, %11, %36, %12, %41) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_2_2(%arg0, %arg1, %arg2, %12, %37, %13, %42) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_2_3(%arg0, %arg1, %arg2, %13, %38, %14, %43) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_2_4(%arg0, %arg1, %arg2, %14) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_3_0(%arg0, %arg1, %arg2, %16) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_3_1(%arg0, %arg1, %arg2, %16, %41, %17, %46) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_3_2(%arg0, %arg1, %arg2, %17, %42, %18, %47) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_3_3(%arg0, %arg1, %arg2, %18, %43, %19, %48) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>, !allo.stream<i32, 4>) -> ()
    call @gemm_3_4(%arg0, %arg1, %arg2, %19) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_4_1(%arg0, %arg1, %arg2, %46) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_4_2(%arg0, %arg1, %arg2, %47) : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    call @gemm_4_3(%arg0, %arg1, %arg2, %48) {last} : (memref<3x2xi32>, memref<2x3xi32>, memref<3x3xi32>, !allo.stream<i32, 4>) -> ()
    return
  }
}

