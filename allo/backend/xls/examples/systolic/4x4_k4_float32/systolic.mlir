module {
  func.func @PE_kernel(%arg0: memref<4xf32, strided<[1], offset: ?>>, %arg1: memref<4xf32, strided<[1], offset: ?>>, %arg2: memref<4xf32, strided<[1], offset: ?>>, %arg3: memref<4xf32, strided<[1], offset: ?>>, %arg4: memref<4x4xf32>, %arg5: index, %arg6: index) attributes {itypes = "_______", otypes = ""} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %0 = arith.sitofp %c0_i32_2 : i32 to f32
    %alloc = memref.alloc() {name = "v"} : memref<f32>
    affine.store %0, %alloc[] {to = "v"} : memref<f32>
    affine.for %arg7 = 0 to 4 {
      %2 = affine.load %arg0[%arg7] {from = "A_in"} : memref<4xf32, strided<[1], offset: ?>>
      %alloc_3 = memref.alloc() {name = "a"} : memref<f32>
      affine.store %2, %alloc_3[] {to = "a"} : memref<f32>
      %3 = affine.load %arg1[%arg7] {from = "B_in"} : memref<4xf32, strided<[1], offset: ?>>
      %alloc_4 = memref.alloc() {name = "b"} : memref<f32>
      affine.store %3, %alloc_4[] {to = "b"} : memref<f32>
      %4 = affine.load %alloc_3[] {from = "a"} : memref<f32>
      %5 = affine.load %alloc_4[] {from = "b"} : memref<f32>
      %6 = arith.mulf %4, %5 : f32
      %7 = affine.load %alloc[] {from = "v"} : memref<f32>
      %8 = arith.addf %7, %6 : f32
      affine.store %8, %alloc[] {to = "v"} : memref<f32>
      %9 = affine.load %alloc_3[] {from = "a"} : memref<f32>
      affine.store %9, %arg2[%arg7] {to = "A_out"} : memref<4xf32, strided<[1], offset: ?>>
      %10 = affine.load %alloc_4[] {from = "b"} : memref<f32>
      affine.store %10, %arg3[%arg7] {to = "B_out"} : memref<4xf32, strided<[1], offset: ?>>
    } {loop_name = "k", op_name = "reduction"}
    %1 = affine.load %alloc[] {from = "v"} : memref<f32>
    affine.store %1, %arg4[%arg5, %arg6] {to = "C"} : memref<4x4xf32>
    return
  }
  func.func @systolic_tile(%arg0: memref<4x4xf32>, %arg1: memref<4x4xf32>, %arg2: memref<4x4xf32>) attributes {itypes = "___", otypes = ""} {
    %alloc = memref.alloc() {name = "A_fifo"} : memref<4x5x4xf32>
    %alloc_0 = memref.alloc() {name = "B_fifo"} : memref<4x5x4xf32>
    %alloc_1 = memref.alloc() {name = "A_drain"} : memref<4xf32>
    %alloc_2 = memref.alloc() {name = "B_drain"} : memref<4xf32>
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %0 = affine.load %arg0[%arg4, %arg3] {from = "A"} : memref<4x4xf32>
        affine.store %0, %alloc[%arg4, 0, %arg3] {to = "A_fifo"} : memref<4x5x4xf32>
      } {loop_name = "m", op_name = "S_m_0"}
      affine.for %arg4 = 0 to 4 {
        %0 = affine.load %arg1[%arg3, %arg4] {from = "B"} : memref<4x4xf32>
        affine.store %0, %alloc_0[%arg4, 0, %arg3] {to = "B_fifo"} : memref<4x5x4xf32>
      } {loop_name = "n", op_name = "S_n_1"}
    } {loop_name = "k", op_name = "data_load"}
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %subview = memref.subview %alloc[%arg3, %arg4, 0] [1, 1, 4] [1, 1, 1] {from = "A_fifo"} : memref<4x5x4xf32> to memref<4xf32, strided<[1], offset: ?>>
        %subview_3 = memref.subview %alloc_0[%arg4, %arg3, 0] [1, 1, 4] [1, 1, 1] {from = "B_fifo"} : memref<4x5x4xf32> to memref<4xf32, strided<[1], offset: ?>>
        %0 = arith.index_cast %arg4 : index to i34
        %c1_i32 = arith.constant 1 : i32
        %c1_i32_4 = arith.constant 1 : i32
        %c1_i32_5 = arith.constant 1 : i32
        %c1_i32_6 = arith.constant 1 : i32
        %1 = arith.extsi %c1_i32_6 : i32 to i34
        %2 = arith.addi %0, %1 : i34
        %3 = arith.index_cast %2 : i34 to index
        %subview_7 = memref.subview %alloc[%arg3, %3, 0] [1, 1, 4] [1, 1, 1] {from = "A_fifo"} : memref<4x5x4xf32> to memref<4xf32, strided<[1], offset: ?>>
        %4 = arith.index_cast %arg3 : index to i34
        %c1_i32_8 = arith.constant 1 : i32
        %c1_i32_9 = arith.constant 1 : i32
        %c1_i32_10 = arith.constant 1 : i32
        %c1_i32_11 = arith.constant 1 : i32
        %5 = arith.extsi %c1_i32_11 : i32 to i34
        %6 = arith.addi %4, %5 : i34
        %7 = arith.index_cast %6 : i34 to index
        %subview_12 = memref.subview %alloc_0[%arg4, %7, 0] [1, 1, 4] [1, 1, 1] {from = "B_fifo"} : memref<4x5x4xf32> to memref<4xf32, strided<[1], offset: ?>>
        func.call @PE_kernel(%subview, %subview_3, %subview_7, %subview_12, %arg2, %arg3, %arg4) : (memref<4xf32, strided<[1], offset: ?>>, memref<4xf32, strided<[1], offset: ?>>, memref<4xf32, strided<[1], offset: ?>>, memref<4xf32, strided<[1], offset: ?>>, memref<4x4xf32>, index, index) -> ()
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "PE"}
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %0 = affine.load %alloc[%arg4, 4, %arg3] {from = "A_fifo"} : memref<4x5x4xf32>
        affine.store %0, %alloc_1[%arg4] {to = "A_drain"} : memref<4xf32>
      } {loop_name = "m", op_name = "S_m_4"}
      affine.for %arg4 = 0 to 4 {
        %0 = affine.load %alloc_0[%arg4, 4, %arg3] {from = "B_fifo"} : memref<4x5x4xf32>
        affine.store %0, %alloc_2[%arg4] {to = "B_drain"} : memref<4xf32>
      } {loop_name = "n", op_name = "S_n_5"}
    } {loop_name = "k", op_name = "data_drain"}
    return
  }
  func.func @systolic(%arg0: memref<4x4xf32>, %arg1: memref<4x4xf32>, %arg2: memref<4x4xf32>) attributes {itypes = "___", otypes = ""} {
    %alloc = memref.alloc() {name = "local_A"} : memref<4x4xf32>
    %alloc_0 = memref.alloc() {name = "local_B"} : memref<4x4xf32>
    %alloc_1 = memref.alloc() {name = "local_C"} : memref<4x4xf32>
    affine.for %arg3 = 0 to 1 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 4 {
          affine.for %arg6 = 0 to 4 {
            %0 = arith.index_cast %arg4 : index to i33
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %1 = arith.extsi %c0_i32_4 : i32 to i33
            %2 = arith.cmpi eq, %0, %1 : i33
            scf.if %2 {
              %3 = affine.load %arg0[%arg3 * 4 + %arg6, %arg5] {from = "A"} : memref<4x4xf32>
              affine.store %3, %alloc[%arg6, %arg5] {to = "local_A"} : memref<4x4xf32>
            }
          } {loop_name = "ai"}
        } {loop_name = "ak", op_name = "load_A_tile"}
        affine.for %arg5 = 0 to 4 {
          affine.for %arg6 = 0 to 4 {
            %0 = affine.load %arg1[%arg5, %arg4 * 4 + %arg6] {from = "B"} : memref<4x4xf32>
            affine.store %0, %alloc_0[%arg5, %arg6] {to = "local_B"} : memref<4x4xf32>
          } {loop_name = "bj"}
        } {loop_name = "bk", op_name = "load_B_tile"}
        func.call @systolic_tile(%alloc, %alloc_0, %alloc_1) : (memref<4x4xf32>, memref<4x4xf32>, memref<4x4xf32>) -> ()
        affine.for %arg5 = 0 to 4 {
          affine.for %arg6 = 0 to 4 {
            %0 = affine.load %alloc_1[%arg6, %arg5] {from = "local_C"} : memref<4x4xf32>
            affine.store %0, %arg2[%arg3 * 4 + %arg6, %arg4 * 4 + %arg5] {to = "C"} : memref<4x4xf32>
          } {loop_name = "si"}
        } {loop_name = "sj", op_name = "store_C_tile"}
      } {loop_name = "ni"}
    } {loop_name = "mi", op_name = "outer_tile"}
    return
  }
  func.func @systolic_4x4_k4_float32(%arg0: memref<4x4xf32>, %arg1: memref<4x4xf32>) -> memref<4x4xf32> attributes {itypes = "__", otypes = "_"} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %0 = arith.sitofp %c0_i32_2 : i32 to f32
    %alloc = memref.alloc() {name = "C"} : memref<4x4xf32>
    linalg.fill ins(%0 : f32) outs(%alloc : memref<4x4xf32>)
    call @systolic(%arg0, %arg1, %alloc) : (memref<4x4xf32>, memref<4x4xf32>, memref<4x4xf32>) -> ()
    return %alloc : memref<4x4xf32>
  }
}

