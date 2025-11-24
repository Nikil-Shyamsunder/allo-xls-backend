**TL;DR**

The breakthrough was recognizing that MLIR's streaming annotations directly map to DSLX channels, and that pipeline semantics with `II=1` mean we want procs that fire every cycle. Accumulators becoming proc state was the second insight—instead of trying to pipeline a loop, we turn each iteration into a proc invocation with persistent state.

FIFO buffers in MLIR don't need explicit modeling in DSLX because channels already provide buffering. The extra dimension we see in MLIR FIFOs (like `2x5x4` instead of `2x4x4`) represents skewing for timing, but DSLX's asynchronous channels handle that naturally.

The hardest part is topology extraction—figuring out which PE connects to which by analyzing all the subview operations. Once we have the connectivity graph, generating the spawn statements and channel wiring is straightforward.


# MLIR to DSLX Streaming Architecture

This document describes our approach to converting Allo's streaming MLIR IR to DSLX procs for systolic arrays and dataflow accelerators.

## The Core Challenge

Allo generates MLIR with streaming annotations and dataflow semantics, but DSLX has two execution models: pure functions and procs (processes). We need to automatically choose the right model and generate correct code.

## When to Use Procs

We use procs when the MLIR contains streaming or dataflow patterns:
- Streaming memrefs with `"stream:N;SST"` annotations
- Functions marked with `dataflow` attribute
- Pipelined loops with `pipeline_ii` annotations
- Multiple PE instances suggesting spatial parallelism

Otherwise, we fall back to pure functions for simple combinational logic.

## Key Conversion Patterns

### Streaming Memrefs → Channels

MLIR streaming memrefs map directly to DSLX channels. A `memref<4xf32, "stream:3;SST">` becomes either `chan<F32> in` for inputs or `chan<F32> out` for outputs, depending on whether we see `affine.load` or `affine.store` operations.

### Loops → Proc State Machines

An `affine.for` loop that iterates K times becomes a proc that maintains an iteration counter in its state. Each loop iteration becomes one invocation of the proc's `next()` function. When the counter reaches K, the proc outputs its accumulated result.

### PE Functions → Proc Definitions

A PE function with streaming inputs/outputs gets converted to a parametric proc. For example, a 2×2 systolic array has PEs at positions (0,0), (0,1), (1,0), and (1,1). We generate a single `proc PE<row: u32, col: u32, K: u32>` and spawn it four times with different parameters.

### Accumulators → Proc State

Local buffers allocated with `memref.alloc` become proc state variables. A MAC (multiply-accumulate) operation needs to remember its running sum between iterations, so we store the accumulator in the proc state alongside the iteration counter.

### Topology from Subviews

Subview operations tell us how PEs are connected. If PE(i,j) reads from `subview[i, j, 0]` and writes to `subview[i, j+1, 0]`, that's a horizontal connection. We build the channel network by tracking these index patterns across the entire array.

## Implementation Structure

We built three main components in [proc_lowerer.py](proc_lowerer.py):

**StreamingPattern** analyzes an MLIR module to detect whether it uses streaming or dataflow patterns. It scans for streaming annotations, dataflow attributes, and pipeline pragmas.

**PEExtractor** takes a PE function and extracts its structure: which arguments are streaming channels, what accumulators it uses, and how many iterations it runs. This gives us everything we need to generate a proc.

**ProcGenerator** produces the actual DSLX code. It creates the channel declarations, config function for wiring, init function for state, and next function that implements the MAC operation with proper token threading for send/recv operations.

## Generated Code Example

Here's what we generate for a single PE:

```dslx
import float32;
type F32 = float32::F32;

pub proc PE<row: u32, col: u32, K: u32> {
  a_in:  chan<F32> in;
  b_in:  chan<F32> in;
  a_out: chan<F32> out;
  b_out: chan<F32> out;
  c_out: chan<F32> out;

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

The proc receives `a` and `b` values, computes `a*b`, accumulates the result, forwards the values to neighboring PEs, and outputs the final sum after K iterations.

## MLIR to DSLX Mappings

| MLIR | DSLX |
|------|------|
| `memref<..., "stream:N">` | `chan<T>` |
| `affine.for 0 to K` | Iteration counter in state |
| `memref.alloc` accumulator | State variable |
| `affine.load` from stream | `recv()` |
| `affine.store` to stream | `send()` |
| `arith.mulf` | `float32::mul()` |
| `arith.addf` | `float32::add()` |

## Current Status

We've successfully implemented:
- Automatic detection of streaming patterns in MLIR
- Extraction of PE structure from functions
- Generation of correct DSLX proc code for single PEs
- Floating-point MAC operations using the DSLX float32 library
- Proper channel-based dataflow with token threading

We have working examples at `/tmp/systolic_2d.x`, `/tmp/systolic_2d_full.x`, and `/tmp/systolic_complete.x` showing single PEs and full 2×2 systolic arrays.

## What's Next

The remaining work is to fully automate the entire flow:
- Extract the complete PE topology from subview operations
- Generate the full proc network with all spawn statements
- Auto-generate all channel declarations and wiring
- Handle FIFO buffers by mapping them to channel networks
- Create feeder procs to load input data correctly
- Integrate this into Allo's main compilation pipeline

## Testing

Run the proc lowerer on an Allo systolic array:

```bash
conda run -n allo python test_proc_lowering.py
```

This shows the MLIR IR, pattern detection results, and generated DSLX code.