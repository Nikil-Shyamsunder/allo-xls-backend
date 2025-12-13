module {
  func.func @PE_kernel(%arg0: memref<2xi32, strided<[1], offset: ?>>, %arg1: memref<2xi32, strided<[1], offset: ?>>, %arg2: memref<2xi32, strided<[1], offset: ?>>, %arg3: memref<2xi32, strided<[1], offset: ?>>, %arg4: memref<2x2xi32>, %arg5: index, %arg6: index) attributes {itypes = "uuuuu__", otypes = ""} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %c0_i32_3 = arith.constant 0 : i32
    %c0_i32_4 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "v", unsigned} : memref<i32>
    affine.store %c0_i32_4, %alloc[] {to = "v"} : memref<i32>
    affine.for %arg7 = 0 to 2 {
      %1 = affine.load %arg0[%arg7] {from = "A_in", unsigned} : memref<2xi32, strided<[1], offset: ?>>
      %alloc_5 = memref.alloc() {name = "a", unsigned} : memref<i32>
      affine.store %1, %alloc_5[] {to = "a"} : memref<i32>
      %2 = affine.load %arg1[%arg7] {from = "B_in", unsigned} : memref<2xi32, strided<[1], offset: ?>>
      %alloc_6 = memref.alloc() {name = "b", unsigned} : memref<i32>
      affine.store %2, %alloc_6[] {to = "b"} : memref<i32>
      %3 = affine.load %alloc_5[] {from = "a"} : memref<i32>
      %4 = affine.load %alloc_6[] {from = "b"} : memref<i32>
      %5 = arith.extui %3 {unsigned} : i32 to i64
      %6 = arith.extui %4 {unsigned} : i32 to i64
      %7 = arith.muli %5, %6 {unsigned} : i64
      %8 = affine.load %alloc[] {from = "v"} : memref<i32>
      %9 = arith.trunci %7 {unsigned} : i64 to i32
      %10 = arith.addi %8, %9 {unsigned} : i32
      affine.store %10, %alloc[] {to = "v"} : memref<i32>
      %11 = affine.load %alloc_5[] {from = "a"} : memref<i32>
      affine.store %11, %arg2[%arg7] {to = "A_out"} : memref<2xi32, strided<[1], offset: ?>>
      %12 = affine.load %alloc_6[] {from = "b"} : memref<i32>
      affine.store %12, %arg3[%arg7] {to = "B_out"} : memref<2xi32, strided<[1], offset: ?>>
    } {loop_name = "k", op_name = "reduction"}
    %0 = affine.load %alloc[] {from = "v"} : memref<i32>
    affine.store %0, %arg4[%arg5, %arg6] {to = "C"} : memref<2x2xi32>
    return
  }
  func.func @systolic_tile(%arg0: memref<2x2xi32>, %arg1: memref<2x2xi32>, %arg2: memref<2x2xi32>) attributes {itypes = "uuu", otypes = ""} {
    %alloc = memref.alloc() {name = "A_fifo", unsigned} : memref<2x3x2xi32>
    %alloc_0 = memref.alloc() {name = "B_fifo", unsigned} : memref<2x3x2xi32>
    %alloc_1 = memref.alloc() {name = "A_drain", unsigned} : memref<2xi32>
    %alloc_2 = memref.alloc() {name = "B_drain", unsigned} : memref<2xi32>
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 2 {
        %0 = affine.load %arg0[%arg4, %arg3] {from = "A", unsigned} : memref<2x2xi32>
        affine.store %0, %alloc[%arg4, 0, %arg3] {to = "A_fifo"} : memref<2x3x2xi32>
      } {loop_name = "m", op_name = "S_m_0"}
      affine.for %arg4 = 0 to 2 {
        %0 = affine.load %arg1[%arg3, %arg4] {from = "B", unsigned} : memref<2x2xi32>
        affine.store %0, %alloc_0[%arg4, 0, %arg3] {to = "B_fifo"} : memref<2x3x2xi32>
      } {loop_name = "n", op_name = "S_n_1"}
    } {loop_name = "k", op_name = "data_load"}
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 2 {
        %subview = memref.subview %alloc[%arg3, %arg4, 0] [1, 1, 2] [1, 1, 1] {from = "A_fifo"} : memref<2x3x2xi32> to memref<2xi32, strided<[1], offset: ?>>
        %subview_3 = memref.subview %alloc_0[%arg4, %arg3, 0] [1, 1, 2] [1, 1, 1] {from = "B_fifo"} : memref<2x3x2xi32> to memref<2xi32, strided<[1], offset: ?>>
        %0 = arith.index_cast %arg4 : index to i34
        %c1_i32 = arith.constant 1 : i32
        %c1_i32_4 = arith.constant 1 : i32
        %c1_i32_5 = arith.constant 1 : i32
        %c1_i32_6 = arith.constant 1 : i32
        %1 = arith.extsi %c1_i32_6 : i32 to i34
        %2 = arith.addi %0, %1 : i34
        %3 = arith.index_cast %2 : i34 to index
        %subview_7 = memref.subview %alloc[%arg3, %3, 0] [1, 1, 2] [1, 1, 1] {from = "A_fifo"} : memref<2x3x2xi32> to memref<2xi32, strided<[1], offset: ?>>
        %4 = arith.index_cast %arg3 : index to i34
        %c1_i32_8 = arith.constant 1 : i32
        %c1_i32_9 = arith.constant 1 : i32
        %c1_i32_10 = arith.constant 1 : i32
        %c1_i32_11 = arith.constant 1 : i32
        %5 = arith.extsi %c1_i32_11 : i32 to i34
        %6 = arith.addi %4, %5 : i34
        %7 = arith.index_cast %6 : i34 to index
        %subview_12 = memref.subview %alloc_0[%arg4, %7, 0] [1, 1, 2] [1, 1, 1] {from = "B_fifo"} : memref<2x3x2xi32> to memref<2xi32, strided<[1], offset: ?>>
        func.call @PE_kernel(%subview, %subview_3, %subview_7, %subview_12, %arg2, %arg3, %arg4) : (memref<2xi32, strided<[1], offset: ?>>, memref<2xi32, strided<[1], offset: ?>>, memref<2xi32, strided<[1], offset: ?>>, memref<2xi32, strided<[1], offset: ?>>, memref<2x2xi32>, index, index) -> ()
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "PE"}
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 2 {
        %0 = affine.load %alloc[%arg4, 2, %arg3] {from = "A_fifo", unsigned} : memref<2x3x2xi32>
        affine.store %0, %alloc_1[%arg4] {to = "A_drain"} : memref<2xi32>
      } {loop_name = "m", op_name = "S_m_4"}
      affine.for %arg4 = 0 to 2 {
        %0 = affine.load %alloc_0[%arg4, 2, %arg3] {from = "B_fifo", unsigned} : memref<2x3x2xi32>
        affine.store %0, %alloc_2[%arg4] {to = "B_drain"} : memref<2xi32>
      } {loop_name = "n", op_name = "S_n_5"}
    } {loop_name = "k", op_name = "data_drain"}
    return
  }
  func.func @systolic(%arg0: memref<2x2xi32>, %arg1: memref<2x2xi32>, %arg2: memref<2x2xi32>) attributes {itypes = "uuu", otypes = ""} {
    %alloc = memref.alloc() {name = "local_A", unsigned} : memref<2x2xi32>
    %alloc_0 = memref.alloc() {name = "local_B", unsigned} : memref<2x2xi32>
    %alloc_1 = memref.alloc() {name = "local_C", unsigned} : memref<2x2xi32>
    affine.for %arg3 = 0 to 1 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 2 {
            %0 = arith.index_cast %arg4 : index to i33
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %1 = arith.extsi %c0_i32_4 : i32 to i33
            %2 = arith.cmpi eq, %0, %1 : i33
            scf.if %2 {
              %3 = affine.load %arg0[%arg3 * 2 + %arg6, %arg5] {from = "A", unsigned} : memref<2x2xi32>
              affine.store %3, %alloc[%arg6, %arg5] {to = "local_A"} : memref<2x2xi32>
            }
          } {loop_name = "ai"}
        } {loop_name = "ak", op_name = "load_A_tile"}
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 2 {
            %0 = affine.load %arg1[%arg5, %arg4 * 2 + %arg6] {from = "B", unsigned} : memref<2x2xi32>
            affine.store %0, %alloc_0[%arg5, %arg6] {to = "local_B"} : memref<2x2xi32>
          } {loop_name = "bj"}
        } {loop_name = "bk", op_name = "load_B_tile"}
        func.call @systolic_tile(%alloc, %alloc_0, %alloc_1) : (memref<2x2xi32>, memref<2x2xi32>, memref<2x2xi32>) -> ()
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 2 {
            %0 = affine.load %alloc_1[%arg6, %arg5] {from = "local_C", unsigned} : memref<2x2xi32>
            affine.store %0, %arg2[%arg3 * 2 + %arg6, %arg4 * 2 + %arg5] {to = "C"} : memref<2x2xi32>
          } {loop_name = "si"}
        } {loop_name = "sj", op_name = "store_C_tile"}
      } {loop_name = "ni"}
    } {loop_name = "mi", op_name = "outer_tile"}
    return
  }
  func.func @systolic_2x2_k2_uint32(%arg0: memref<2x2xi32>, %arg1: memref<2x2xi32>) -> memref<2x2xi32> attributes {itypes = "uu", otypes = "u"} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C", unsigned} : memref<2x2xi32>
    linalg.fill ins(%c0_i32_2 : i32) outs(%alloc : memref<2x2xi32>)
    call @systolic(%arg0, %arg1, %alloc) : (memref<2x2xi32>, memref<2x2xi32>, memref<2x2xi32>) -> ()
    return %alloc : memref<2x2xi32>
  }
}

