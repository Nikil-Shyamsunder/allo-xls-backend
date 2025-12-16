module {
  func.func @gemm_0_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg1[%arg4, 0] {from = "B"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg1[%arg4, 1] {from = "B"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg1[%arg4, 2] {from = "B"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg1[%arg4, 3] {from = "B"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg0[0, %arg4] {from = "A"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 0] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_1_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 1] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_1_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 2] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_1_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[0, 3] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_1_5(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "a"} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg0[1, %arg4] {from = "A"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 0] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_2_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 1] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_2_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 2] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_2_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[1, 3] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_2_5(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "a"} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg0[2, %arg4] {from = "A"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 0] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_3_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 1] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_3_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 2] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_3_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[2, 3] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_3_5(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "a"} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_4_0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 4 {
      %0 = affine.load %arg0[3, %arg4] {from = "A"} : memref<4x4xi32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_4_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[3, 0] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_4_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[3, 1] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_4_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[3, 2] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_4_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>, %arg4: !allo.stream<i32, 8>, %arg5: !allo.stream<i32, 8>, %arg6: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss____", otypes = "", stypes = "___iioo"} {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "c"} : memref<i32>
    affine.store %c0_i32, %alloc[] {to = "c"} : memref<i32>
    affine.for %arg7 = 0 to 4 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc_0 = memref.alloc() {name = "a"} : memref<i32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<i32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<i32, 8> -> i32
      %alloc_1 = memref.alloc() {name = "b"} : memref<i32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      %5 = arith.extsi %3 : i32 to i64
      %6 = arith.extsi %4 : i32 to i64
      %7 = arith.muli %5, %6 : i64
      %8 = affine.load %alloc[] {from = "c"} : memref<i32>
      %9 = arith.trunci %7 : i64 to i32
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %alloc[] {to = "c"} : memref<i32>
      %11 = affine.load %alloc_0[] {from = "a"} : memref<i32>
      allo.stream_put(%arg5, [], %11) : !allo.stream<i32, 8> contains i32
      %12 = affine.load %alloc_1[] {from = "b"} : memref<i32>
      allo.stream_put(%arg6, [], %12) : !allo.stream<i32, 8> contains i32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<i32>
    affine.store %0, %arg2[3, 3] {to = "C"} : memref<4x4xi32>
    return
  }
  func.func @gemm_4_5(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "a"} : memref<i32>
      affine.store %0, %alloc[] {to = "a"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_5_1(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "b"} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_5_2(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "b"} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_5_3(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "b"} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_5_4(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>, %arg3: !allo.stream<i32, 8>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 4 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<i32, 8> -> i32
      %alloc = memref.alloc() {name = "b"} : memref<i32>
      affine.store %0, %alloc[] {to = "b"} : memref<i32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @top(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>) attributes {dataflow, itypes = "sss"} {
    %0 = allo.stream_construct() {name = "fifo_A_0_0"} : !allo.stream<i32, 8>
    %1 = allo.stream_construct() {name = "fifo_A_0_1"} : !allo.stream<i32, 8>
    %2 = allo.stream_construct() {name = "fifo_A_0_2"} : !allo.stream<i32, 8>
    %3 = allo.stream_construct() {name = "fifo_A_0_3"} : !allo.stream<i32, 8>
    %4 = allo.stream_construct() {name = "fifo_A_0_4"} : !allo.stream<i32, 8>
    %5 = allo.stream_construct() {name = "fifo_A_0_5"} : !allo.stream<i32, 8>
    %6 = allo.stream_construct() {name = "fifo_A_1_0"} : !allo.stream<i32, 8>
    %7 = allo.stream_construct() {name = "fifo_A_1_1"} : !allo.stream<i32, 8>
    %8 = allo.stream_construct() {name = "fifo_A_1_2"} : !allo.stream<i32, 8>
    %9 = allo.stream_construct() {name = "fifo_A_1_3"} : !allo.stream<i32, 8>
    %10 = allo.stream_construct() {name = "fifo_A_1_4"} : !allo.stream<i32, 8>
    %11 = allo.stream_construct() {name = "fifo_A_1_5"} : !allo.stream<i32, 8>
    %12 = allo.stream_construct() {name = "fifo_A_2_0"} : !allo.stream<i32, 8>
    %13 = allo.stream_construct() {name = "fifo_A_2_1"} : !allo.stream<i32, 8>
    %14 = allo.stream_construct() {name = "fifo_A_2_2"} : !allo.stream<i32, 8>
    %15 = allo.stream_construct() {name = "fifo_A_2_3"} : !allo.stream<i32, 8>
    %16 = allo.stream_construct() {name = "fifo_A_2_4"} : !allo.stream<i32, 8>
    %17 = allo.stream_construct() {name = "fifo_A_2_5"} : !allo.stream<i32, 8>
    %18 = allo.stream_construct() {name = "fifo_A_3_0"} : !allo.stream<i32, 8>
    %19 = allo.stream_construct() {name = "fifo_A_3_1"} : !allo.stream<i32, 8>
    %20 = allo.stream_construct() {name = "fifo_A_3_2"} : !allo.stream<i32, 8>
    %21 = allo.stream_construct() {name = "fifo_A_3_3"} : !allo.stream<i32, 8>
    %22 = allo.stream_construct() {name = "fifo_A_3_4"} : !allo.stream<i32, 8>
    %23 = allo.stream_construct() {name = "fifo_A_3_5"} : !allo.stream<i32, 8>
    %24 = allo.stream_construct() {name = "fifo_A_4_0"} : !allo.stream<i32, 8>
    %25 = allo.stream_construct() {name = "fifo_A_4_1"} : !allo.stream<i32, 8>
    %26 = allo.stream_construct() {name = "fifo_A_4_2"} : !allo.stream<i32, 8>
    %27 = allo.stream_construct() {name = "fifo_A_4_3"} : !allo.stream<i32, 8>
    %28 = allo.stream_construct() {name = "fifo_A_4_4"} : !allo.stream<i32, 8>
    %29 = allo.stream_construct() {name = "fifo_A_4_5"} : !allo.stream<i32, 8>
    %30 = allo.stream_construct() {name = "fifo_A_5_0"} : !allo.stream<i32, 8>
    %31 = allo.stream_construct() {name = "fifo_A_5_1"} : !allo.stream<i32, 8>
    %32 = allo.stream_construct() {name = "fifo_A_5_2"} : !allo.stream<i32, 8>
    %33 = allo.stream_construct() {name = "fifo_A_5_3"} : !allo.stream<i32, 8>
    %34 = allo.stream_construct() {name = "fifo_A_5_4"} : !allo.stream<i32, 8>
    %35 = allo.stream_construct() {name = "fifo_A_5_5"} : !allo.stream<i32, 8>
    %36 = allo.stream_construct() {name = "fifo_B_0_0"} : !allo.stream<i32, 8>
    %37 = allo.stream_construct() {name = "fifo_B_0_1"} : !allo.stream<i32, 8>
    %38 = allo.stream_construct() {name = "fifo_B_0_2"} : !allo.stream<i32, 8>
    %39 = allo.stream_construct() {name = "fifo_B_0_3"} : !allo.stream<i32, 8>
    %40 = allo.stream_construct() {name = "fifo_B_0_4"} : !allo.stream<i32, 8>
    %41 = allo.stream_construct() {name = "fifo_B_0_5"} : !allo.stream<i32, 8>
    %42 = allo.stream_construct() {name = "fifo_B_1_0"} : !allo.stream<i32, 8>
    %43 = allo.stream_construct() {name = "fifo_B_1_1"} : !allo.stream<i32, 8>
    %44 = allo.stream_construct() {name = "fifo_B_1_2"} : !allo.stream<i32, 8>
    %45 = allo.stream_construct() {name = "fifo_B_1_3"} : !allo.stream<i32, 8>
    %46 = allo.stream_construct() {name = "fifo_B_1_4"} : !allo.stream<i32, 8>
    %47 = allo.stream_construct() {name = "fifo_B_1_5"} : !allo.stream<i32, 8>
    %48 = allo.stream_construct() {name = "fifo_B_2_0"} : !allo.stream<i32, 8>
    %49 = allo.stream_construct() {name = "fifo_B_2_1"} : !allo.stream<i32, 8>
    %50 = allo.stream_construct() {name = "fifo_B_2_2"} : !allo.stream<i32, 8>
    %51 = allo.stream_construct() {name = "fifo_B_2_3"} : !allo.stream<i32, 8>
    %52 = allo.stream_construct() {name = "fifo_B_2_4"} : !allo.stream<i32, 8>
    %53 = allo.stream_construct() {name = "fifo_B_2_5"} : !allo.stream<i32, 8>
    %54 = allo.stream_construct() {name = "fifo_B_3_0"} : !allo.stream<i32, 8>
    %55 = allo.stream_construct() {name = "fifo_B_3_1"} : !allo.stream<i32, 8>
    %56 = allo.stream_construct() {name = "fifo_B_3_2"} : !allo.stream<i32, 8>
    %57 = allo.stream_construct() {name = "fifo_B_3_3"} : !allo.stream<i32, 8>
    %58 = allo.stream_construct() {name = "fifo_B_3_4"} : !allo.stream<i32, 8>
    %59 = allo.stream_construct() {name = "fifo_B_3_5"} : !allo.stream<i32, 8>
    %60 = allo.stream_construct() {name = "fifo_B_4_0"} : !allo.stream<i32, 8>
    %61 = allo.stream_construct() {name = "fifo_B_4_1"} : !allo.stream<i32, 8>
    %62 = allo.stream_construct() {name = "fifo_B_4_2"} : !allo.stream<i32, 8>
    %63 = allo.stream_construct() {name = "fifo_B_4_3"} : !allo.stream<i32, 8>
    %64 = allo.stream_construct() {name = "fifo_B_4_4"} : !allo.stream<i32, 8>
    %65 = allo.stream_construct() {name = "fifo_B_4_5"} : !allo.stream<i32, 8>
    %66 = allo.stream_construct() {name = "fifo_B_5_0"} : !allo.stream<i32, 8>
    %67 = allo.stream_construct() {name = "fifo_B_5_1"} : !allo.stream<i32, 8>
    %68 = allo.stream_construct() {name = "fifo_B_5_2"} : !allo.stream<i32, 8>
    %69 = allo.stream_construct() {name = "fifo_B_5_3"} : !allo.stream<i32, 8>
    %70 = allo.stream_construct() {name = "fifo_B_5_4"} : !allo.stream<i32, 8>
    %71 = allo.stream_construct() {name = "fifo_B_5_5"} : !allo.stream<i32, 8>
    call @gemm_0_1(%arg0, %arg1, %arg2, %43) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_0_2(%arg0, %arg1, %arg2, %44) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_0_3(%arg0, %arg1, %arg2, %45) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_0_4(%arg0, %arg1, %arg2, %46) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_0(%arg0, %arg1, %arg2, %7) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_1(%arg0, %arg1, %arg2, %7, %43, %8, %49) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_2(%arg0, %arg1, %arg2, %8, %44, %9, %50) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_3(%arg0, %arg1, %arg2, %9, %45, %10, %51) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_4(%arg0, %arg1, %arg2, %10, %46, %11, %52) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_1_5(%arg0, %arg1, %arg2, %11) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_0(%arg0, %arg1, %arg2, %13) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_1(%arg0, %arg1, %arg2, %13, %49, %14, %55) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_2(%arg0, %arg1, %arg2, %14, %50, %15, %56) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_3(%arg0, %arg1, %arg2, %15, %51, %16, %57) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_4(%arg0, %arg1, %arg2, %16, %52, %17, %58) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_2_5(%arg0, %arg1, %arg2, %17) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_0(%arg0, %arg1, %arg2, %19) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_1(%arg0, %arg1, %arg2, %19, %55, %20, %61) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_2(%arg0, %arg1, %arg2, %20, %56, %21, %62) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_3(%arg0, %arg1, %arg2, %21, %57, %22, %63) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_4(%arg0, %arg1, %arg2, %22, %58, %23, %64) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_3_5(%arg0, %arg1, %arg2, %23) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_0(%arg0, %arg1, %arg2, %25) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_1(%arg0, %arg1, %arg2, %25, %61, %26, %67) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_2(%arg0, %arg1, %arg2, %26, %62, %27, %68) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_3(%arg0, %arg1, %arg2, %27, %63, %28, %69) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_4(%arg0, %arg1, %arg2, %28, %64, %29, %70) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>, !allo.stream<i32, 8>) -> ()
    call @gemm_4_5(%arg0, %arg1, %arg2, %29) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_5_1(%arg0, %arg1, %arg2, %67) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_5_2(%arg0, %arg1, %arg2, %68) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_5_3(%arg0, %arg1, %arg2, %69) : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    call @gemm_5_4(%arg0, %arg1, %arg2, %70) {last} : (memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>, !allo.stream<i32, 8>) -> ()
    return
  }
}

