module {
  func.func @gemm_0_1(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg1[%arg4, 0] {from = "B"} : memref<2x2xf32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_0_2(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg1[%arg4, 1] {from = "B"} : memref<2x2xf32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_0(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg0[0, %arg4] {from = "A"} : memref<2x2xf32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_1_1(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>, %arg4: !allo.stream<f32, 4>, %arg5: !allo.stream<f32, 4>, %arg6: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "_______", otypes = "", stypes = "___iioo"} {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {name = "c"} : memref<f32>
    affine.store %cst, %alloc[] {to = "c"} : memref<f32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc_0 = memref.alloc() {name = "a"} : memref<f32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<f32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<f32, 4> -> f32
      %alloc_1 = memref.alloc() {name = "b"} : memref<f32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<f32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      %5 = arith.mulf %3, %4 : f32
      %6 = affine.load %alloc[] {from = "c"} : memref<f32>
      %7 = arith.addf %6, %5 : f32
      affine.store %7, %alloc[] {to = "c"} : memref<f32>
      %8 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      allo.stream_put(%arg5, [], %8) : !allo.stream<f32, 4> contains f32
      %9 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      allo.stream_put(%arg6, [], %9) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<f32>
    affine.store %0, %arg2[0, 0] {to = "C"} : memref<2x2xf32>
    return
  }
  func.func @gemm_1_2(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>, %arg4: !allo.stream<f32, 4>, %arg5: !allo.stream<f32, 4>, %arg6: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "_______", otypes = "", stypes = "___iioo"} {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {name = "c"} : memref<f32>
    affine.store %cst, %alloc[] {to = "c"} : memref<f32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc_0 = memref.alloc() {name = "a"} : memref<f32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<f32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<f32, 4> -> f32
      %alloc_1 = memref.alloc() {name = "b"} : memref<f32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<f32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      %5 = arith.mulf %3, %4 : f32
      %6 = affine.load %alloc[] {from = "c"} : memref<f32>
      %7 = arith.addf %6, %5 : f32
      affine.store %7, %alloc[] {to = "c"} : memref<f32>
      %8 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      allo.stream_put(%arg5, [], %8) : !allo.stream<f32, 4> contains f32
      %9 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      allo.stream_put(%arg6, [], %9) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<f32>
    affine.store %0, %arg2[0, 1] {to = "C"} : memref<2x2xf32>
    return
  }
  func.func @gemm_1_3(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc = memref.alloc() {name = "a"} : memref<f32>
      affine.store %0, %alloc[] {to = "a"} : memref<f32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_0(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___o"} {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.load %arg0[1, %arg4] {from = "A"} : memref<2x2xf32>
      allo.stream_put(%arg3, [], %0) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_2_1(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>, %arg4: !allo.stream<f32, 4>, %arg5: !allo.stream<f32, 4>, %arg6: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "_______", otypes = "", stypes = "___iioo"} {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {name = "c"} : memref<f32>
    affine.store %cst, %alloc[] {to = "c"} : memref<f32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc_0 = memref.alloc() {name = "a"} : memref<f32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<f32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<f32, 4> -> f32
      %alloc_1 = memref.alloc() {name = "b"} : memref<f32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<f32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      %5 = arith.mulf %3, %4 : f32
      %6 = affine.load %alloc[] {from = "c"} : memref<f32>
      %7 = arith.addf %6, %5 : f32
      affine.store %7, %alloc[] {to = "c"} : memref<f32>
      %8 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      allo.stream_put(%arg5, [], %8) : !allo.stream<f32, 4> contains f32
      %9 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      allo.stream_put(%arg6, [], %9) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<f32>
    affine.store %0, %arg2[1, 0] {to = "C"} : memref<2x2xf32>
    return
  }
  func.func @gemm_2_2(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>, %arg4: !allo.stream<f32, 4>, %arg5: !allo.stream<f32, 4>, %arg6: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "_______", otypes = "", stypes = "___iioo"} {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {name = "c"} : memref<f32>
    affine.store %cst, %alloc[] {to = "c"} : memref<f32>
    affine.for %arg7 = 0 to 2 {
      %1 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc_0 = memref.alloc() {name = "a"} : memref<f32>
      affine.store %1, %alloc_0[] {to = "a"} : memref<f32>
      %2 = allo.stream_get(%arg4, []) : !allo.stream<f32, 4> -> f32
      %alloc_1 = memref.alloc() {name = "b"} : memref<f32>
      affine.store %2, %alloc_1[] {to = "b"} : memref<f32>
      %3 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      %4 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      %5 = arith.mulf %3, %4 : f32
      %6 = affine.load %alloc[] {from = "c"} : memref<f32>
      %7 = arith.addf %6, %5 : f32
      affine.store %7, %alloc[] {to = "c"} : memref<f32>
      %8 = affine.load %alloc_0[] {from = "a"} : memref<f32>
      allo.stream_put(%arg5, [], %8) : !allo.stream<f32, 4> contains f32
      %9 = affine.load %alloc_1[] {from = "b"} : memref<f32>
      allo.stream_put(%arg6, [], %9) : !allo.stream<f32, 4> contains f32
    } {loop_name = "k", op_name = "S_k_0"}
    %0 = affine.load %alloc[] {from = "c"} : memref<f32>
    affine.store %0, %arg2[1, 1] {to = "C"} : memref<2x2xf32>
    return
  }
  func.func @gemm_2_3(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc = memref.alloc() {name = "a"} : memref<f32>
      affine.store %0, %alloc[] {to = "a"} : memref<f32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_1(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc = memref.alloc() {name = "b"} : memref<f32>
      affine.store %0, %alloc[] {to = "b"} : memref<f32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @gemm_3_2(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>, %arg3: !allo.stream<f32, 4>) attributes {df.kernel, itypes = "____", otypes = "", stypes = "___i"} {
    affine.for %arg4 = 0 to 2 {
      %0 = allo.stream_get(%arg3, []) : !allo.stream<f32, 4> -> f32
      %alloc = memref.alloc() {name = "b"} : memref<f32>
      affine.store %0, %alloc[] {to = "b"} : memref<f32>
    } {loop_name = "k", op_name = "S_k_0"}
    return
  }
  func.func @top(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>) attributes {dataflow, itypes = "___"} {
    %0 = allo.stream_construct() {name = "fifo_A_0_0"} : !allo.stream<f32, 4>
    %1 = allo.stream_construct() {name = "fifo_A_0_1"} : !allo.stream<f32, 4>
    %2 = allo.stream_construct() {name = "fifo_A_0_2"} : !allo.stream<f32, 4>
    %3 = allo.stream_construct() {name = "fifo_A_0_3"} : !allo.stream<f32, 4>
    %4 = allo.stream_construct() {name = "fifo_A_1_0"} : !allo.stream<f32, 4>
    %5 = allo.stream_construct() {name = "fifo_A_1_1"} : !allo.stream<f32, 4>
    %6 = allo.stream_construct() {name = "fifo_A_1_2"} : !allo.stream<f32, 4>
    %7 = allo.stream_construct() {name = "fifo_A_1_3"} : !allo.stream<f32, 4>
    %8 = allo.stream_construct() {name = "fifo_A_2_0"} : !allo.stream<f32, 4>
    %9 = allo.stream_construct() {name = "fifo_A_2_1"} : !allo.stream<f32, 4>
    %10 = allo.stream_construct() {name = "fifo_A_2_2"} : !allo.stream<f32, 4>
    %11 = allo.stream_construct() {name = "fifo_A_2_3"} : !allo.stream<f32, 4>
    %12 = allo.stream_construct() {name = "fifo_A_3_0"} : !allo.stream<f32, 4>
    %13 = allo.stream_construct() {name = "fifo_A_3_1"} : !allo.stream<f32, 4>
    %14 = allo.stream_construct() {name = "fifo_A_3_2"} : !allo.stream<f32, 4>
    %15 = allo.stream_construct() {name = "fifo_A_3_3"} : !allo.stream<f32, 4>
    %16 = allo.stream_construct() {name = "fifo_B_0_0"} : !allo.stream<f32, 4>
    %17 = allo.stream_construct() {name = "fifo_B_0_1"} : !allo.stream<f32, 4>
    %18 = allo.stream_construct() {name = "fifo_B_0_2"} : !allo.stream<f32, 4>
    %19 = allo.stream_construct() {name = "fifo_B_0_3"} : !allo.stream<f32, 4>
    %20 = allo.stream_construct() {name = "fifo_B_1_0"} : !allo.stream<f32, 4>
    %21 = allo.stream_construct() {name = "fifo_B_1_1"} : !allo.stream<f32, 4>
    %22 = allo.stream_construct() {name = "fifo_B_1_2"} : !allo.stream<f32, 4>
    %23 = allo.stream_construct() {name = "fifo_B_1_3"} : !allo.stream<f32, 4>
    %24 = allo.stream_construct() {name = "fifo_B_2_0"} : !allo.stream<f32, 4>
    %25 = allo.stream_construct() {name = "fifo_B_2_1"} : !allo.stream<f32, 4>
    %26 = allo.stream_construct() {name = "fifo_B_2_2"} : !allo.stream<f32, 4>
    %27 = allo.stream_construct() {name = "fifo_B_2_3"} : !allo.stream<f32, 4>
    %28 = allo.stream_construct() {name = "fifo_B_3_0"} : !allo.stream<f32, 4>
    %29 = allo.stream_construct() {name = "fifo_B_3_1"} : !allo.stream<f32, 4>
    %30 = allo.stream_construct() {name = "fifo_B_3_2"} : !allo.stream<f32, 4>
    %31 = allo.stream_construct() {name = "fifo_B_3_3"} : !allo.stream<f32, 4>
    call @gemm_0_1(%arg0, %arg1, %arg2, %21) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_0_2(%arg0, %arg1, %arg2, %22) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_1_0(%arg0, %arg1, %arg2, %5) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_1_1(%arg0, %arg1, %arg2, %5, %21, %6, %25) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>) -> ()
    call @gemm_1_2(%arg0, %arg1, %arg2, %6, %22, %7, %26) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>) -> ()
    call @gemm_1_3(%arg0, %arg1, %arg2, %7) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_2_0(%arg0, %arg1, %arg2, %9) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_2_1(%arg0, %arg1, %arg2, %9, %25, %10, %29) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>) -> ()
    call @gemm_2_2(%arg0, %arg1, %arg2, %10, %26, %11, %30) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>, !allo.stream<f32, 4>) -> ()
    call @gemm_2_3(%arg0, %arg1, %arg2, %11) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_3_1(%arg0, %arg1, %arg2, %29) : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    call @gemm_3_2(%arg0, %arg1, %arg2, %30) {last} : (memref<2x2xf32>, memref<2x2xf32>, memref<2x2xf32>, !allo.stream<f32, 4>) -> ()
    return
  }
}

