# MLIR to DSLX Conversion Patterns for Systolic Arrays

## Overview

This document captures the patterns discovered while manually converting Allo's systolic array MLIR IR to DSLX procs. These patterns can guide automated lowering from MLIR to DSLX.

## Key Decision: When to Use Procs vs Pure Functions

### Use Procs When:
1. **Streaming annotations present**: `memref<..., "stream:N;SST">` in MLIR
2. **Dataflow attribute present**: `attributes {dataflow, ...}` on functions
3. **Pipeline annotations**: `pipeline_ii = N` in loop attributes
4. **Multiple function instances**: Pattern like `PE_kernel_small_0_0`, `PE_kernel_small_0_1`, etc.
5. **FIFO buffers**: Multi-dimensional buffers with extra depth dimension for streaming

### Use Pure Functions When:
- Simple combinational logic
- Static array operations
- No streaming or pipelining requirements
- Single function instance

## MLIR → DSLX Mapping Patterns

### 1. Streaming Memrefs → Channels

**MLIR Pattern:**
```mlir
memref<4xf32, strided<[1], offset: ?>, "stream:3;SST">
```

**DSLX Mapping:**
```dslx
chan<F32> in   // or out, depending on usage
```

**Rule:**
- `"stream:N;SST"` annotation -> use `chan<T>`
- Input streams (`affine.load from stream`) -> `chan<T> in`
- Output streams (`affine.store to stream`) -> `chan<T> out`

### 2. PE Functions → Proc Definitions

**MLIR Pattern:**
```mlir
func.func @PE_kernel_small(%arg0: memref<4xf32, "stream:3;SST">,
                          %arg1: memref<4xf32, "stream:5;SST">,
                          %arg2: memref<4xf32, "stream:3;SST">,
                          %arg3: memref<4xf32, "stream:5;SST">,
                          %arg4: memref<2x4xf32>, ...) {
  // Loop over K iterations with accumulation
  affine.for %arg7 = 0 to 4 {
    %a = affine.load %arg0[%arg7]
    %b = affine.load %arg1[%arg7]
    %prod = arith.mulf %a, %b
    %new_v = arith.addf %v, %prod
    affine.store %a, %arg2[%arg7]
    affine.store %b, %arg3[%arg7]
  }
}
```

**DSLX Mapping:**
```dslx
pub proc PE<row: u32, col: u32, K: u32> {
  a_in:  chan<F32> in;   // stream:3
  b_in:  chan<F32> in;   // stream:5
  a_out: chan<F32> out;  // stream:3
  b_out: chan<F32> out;  // stream:5
  c_out: chan<F32> out;  // result output

  config(a_in: chan<F32> in, b_in: chan<F32> in,
         a_out: chan<F32> out, b_out: chan<F32> out,
         c_out: chan<F32> out) {
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

    (new_accum, new_k)
  }
}
```

**Key Conversions:**
- `affine.for` loop over K → proc state with iteration counter
- `memref.alloc` for accumulator → proc state variable
- `affine.load` from stream → `recv()` from channel
- `affine.store` to stream → `send()` to channel
- Loop body → `next()` function body (executes once per iteration)

### 3. Multiple PE Instances → Spawn Statements

**MLIR Pattern:**
```mlir
func.func @systolic_tile_small(...) attributes {dataflow, ...} {
  call @PE_kernel_small_0_0(...)
  call @PE_kernel_small_0_1(...)
  call @PE_kernel_small_1_0(...)
  call @PE_kernel_small_1_1(...)
}
```

**DSLX Mapping:**
```dslx
spawn PE<u32:0, u32:0, u32:K>(...);
spawn PE<u32:0, u32:1, u32:K>(...);
spawn PE<u32:1, u32:0, u32:K>(...);
spawn PE<u32:1, u32:1, u32:K>(...);
```

**Rule:**
- Each `@PE_kernel_small_i_j` → `spawn PE<i, j, K>`
- Extract `i`, `j` from function suffix
- Extract `K` from loop bounds in PE function

### 4. FIFO Buffers → Channel Networks

**MLIR Pattern:**
```mlir
%alloc = memref.alloc() : memref<2x5x4xf32, "stream:3;SST">  // A_fifo
%alloc_0 = memref.alloc() : memref<4x3x4xf32, "stream:5;SST">  // B_fifo
```

**Analysis:**
- `2x5x4` for matrix `2x4`: extra dimension (5 vs 4) is buffering/skewing
- `4x3x4` for matrix `4x4`: extra dimension (3 vs 2) is buffering/skewing

**DSLX Mapping:**
```dslx
// Create channels between PEs based on topology
let (a_00_s, a_00_r) = chan<F32>("a_0_0");
let (a_01_s, a_01_r) = chan<F32>("a_0_1");
// ... etc for all connections
```

**Rule:**
- FIFOs with streaming annotation → channel networks connecting procs
- Dimensions indicate topology: `MxNxK` FIFO → M×N PE array, K iterations
- Extra buffering dimension → natural channel buffering (don't need explicit FIFO proc)

### 5. Subview Operations → Channel Connections

**MLIR Pattern:**
```mlir
%subview = memref.subview %alloc[%arg3, %arg4, 0] [1, 1, 4] [1, 1, 1]
%subview_7 = memref.subview %alloc[%arg3, %3, 0] [1, 1, 4] [1, 1, 1]
call @PE_kernel_small_0_0(%subview, %subview_3, %subview_7, %subview_12, ...)
```

**Analysis:**
- Subview at `[i, j, 0]` → input to PE at position (i, j)
- Subview at `[i, j+1, 0]` → output from PE at (i, j) to PE at (i, j+1)

**DSLX Mapping:**
```dslx
// Connect PE[i,j] outputs to PE[i,j+1] inputs
spawn PE<i, j>(..., a_ij_r, ..., a_i_j+1_s, ...);
```

**Rule:**
- Track subview indices to determine channel connectivity
- `[row, col, 0]` and `[row, col+1, 0]` → horizontal connection (A flows left-to-right)
- `[row, col, 0]` and `[row+1, col, 0]` → vertical connection (B flows top-to-bottom)

### 6. Floating-Point Operations

**MLIR Pattern:**
```mlir
%0 = arith.mulf %a, %b : f32
%1 = arith.addf %c, %0 : f32
```

**DSLX Mapping:**
```dslx
import float32;
type F32 = float32::F32;

let prod = float32::mul(a, b);
let sum = float32::add(c, prod);
```

**Rule:**
- `f32` type → `F32` (from float32 library)
- `arith.mulf` → `float32::mul()`
- `arith.addf` → `float32::add()`
- Import `float32` library for all FP operations

### 7. Loop Bounds → Parametric Constants

**MLIR Pattern:**
```mlir
affine.for %arg7 = 0 to 4 { ... }  // K dimension
affine.for %arg3 = 0 to 2 { ... }  // M dimension
affine.for %arg4 = 0 to 4 { ... }  // N dimension
```

**DSLX Mapping:**
```dslx
pub proc PE<row: u32, col: u32, K: u32> { ... }
spawn PE<u32:0, u32:0, u32:4>(...);  // K=4
```

**Rule:**
- Extract loop bounds as parametric constants
- Pass to procs as template parameters
- Use in proc state for iteration counting

## Complete Conversion Algorithm

### Phase 1: Detect Proc Requirements
1. Scan for `"stream:..."` annotations → need procs
2. Scan for `dataflow` attribute → need proc network
3. Scan for `pipeline_ii` → need procs for pipelining
4. If any detected → use proc-based approach

### Phase 2: Extract PE Structure
1. Find PE function (pattern: `@PE_kernel_*`)
2. Extract streaming inputs/outputs from memref arguments
3. Extract loop bounds for K dimension
4. Extract accumulator variables (from `memref.alloc`)
5. Map to proc definition with:
   - Channels for streaming args
   - State for accumulators + iteration counter
   - next() body from loop body

### Phase 3: Extract Topology
1. Find functions with multiple instances (e.g., `@PE_kernel_0_0`, `@PE_kernel_0_1`)
2. Extract grid dimensions from instance count
3. Find FIFO allocations to determine topology:
   - `memref<MxNxK, "stream:3">` → M rows, N-1 columns (or N+buffering)
4. Build connectivity graph from subview operations

### Phase 4: Generate Proc Network
1. Generate channel declarations for all PE interconnections
2. Generate spawn statements for each PE instance
3. Wire channels based on topology (left-to-right for A, top-to-bottom for B)
4. Add drain channels for outputs

### Phase 5: Generate Test/Wrapper
1. Create feeder procs or test proc to provide inputs
2. Match the three-phase pattern from MLIR:
   - Load phase: feed data to FIFOs
   - Compute phase: PEs execute
   - Drain phase: collect results
3. Generate channel send/recv in correct order

## Working Examples

See these files for complete working examples:
- `/tmp/systolic_2d.x` - Single PE test
- `/tmp/systolic_2d_full.x` - 2×4 PE array
- `/tmp/systolic_complete.x` - 2×2 PE array with full matrix multiply

## Next Steps for Automation

1. Implement MLIR analysis pass to detect streaming/dataflow patterns
2. Build symbol table mapping MLIR ops to DSLX constructs
3. Implement topology extractor from subview operations
4. Generate proc definitions from PE functions
5. Generate spawn network from topology
6. Handle edge cases (different buffer sizes, multiple streams, etc.)
