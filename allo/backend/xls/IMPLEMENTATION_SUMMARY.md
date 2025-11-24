# MLIR to DSLX Proc-Based Lowering - Implementation Summary

## What We Built

Successfully implemented automatic proc-based code generation for streaming/dataflow MLIR patterns, specifically for systolic arrays.

## Files Created

1. **[/home/nvs26/allo-xls-backend/allo/backend/xls/proc_lowerer.py](allo/backend/xls/proc_lowerer.py)**
   - `StreamingPattern`: Detects streaming/dataflow patterns in MLIR
   - `PEExtractor`: Extracts Processing Element structure from MLIR functions
   - `ProcGenerator`: Generates DSLX proc code from extracted PE info
   - `MlirToDslxProcLowerer`: Main lowerer coordinating the process

2. **[/home/nvs26/allo-xls-backend/test_proc_lowering.py](test_proc_lowering.py)**
   - Test script demonstrating the proc lowerer on Allo systolic arrays

3. **[/tmp/MLIR_to_DSLX_Conversion_Patterns.md](/tmp/MLIR_to_DSLX_Conversion_Patterns.md)**
   - Comprehensive documentation of conversion patterns
   - Decision criteria for when to use procs vs functions
   - Mapping rules for MLIR constructs to DSLX

4. **Working DSLX Examples**:
   - [/tmp/systolic_2d.x](/tmp/systolic_2d.x) - Single PE test
   - [/tmp/systolic_2d_full.x](/tmp/systolic_2d_full.x) - 2×4 PE array
   - [/tmp/systolic_complete.x](/tmp/systolic_complete.x) - 2×2 with full matrix multiply

## How It Works

### 1. Pattern Detection (`StreamingPattern`)

Analyzes MLIR module to detect:
- **Streaming memrefs**: `memref<..., "stream:N;SST">` annotations
- **Dataflow functions**: `attributes {dataflow, ...}`
- **Pipelined loops**: `pipeline_ii = N` annotations
- **PE instances**: Multiple PE_kernel_X_Y functions

**Example Detection Output:**
```
✓ Streaming/dataflow patterns detected!
  - Streaming memrefs: 4
  - Dataflow functions: {'systolic_tile_small'}
  - Pipelined loops: {'k': IntegerAttr(1 : ui32)}
```

### 2. PE Extraction (`PEExtractor`)

From MLIR PE function, extracts:
- Streaming inputs/outputs (from memref arguments with "stream:..." annotation)
- Accumulators (from memref.alloc operations)
- Loop bounds (from affine.for operations)

**Example Extracted Structure:**
```python
{
  'name': 'PE_kernel_small_0_0',
  'streaming_inputs': [...]  # a_in, b_in channels
  'streaming_outputs': [...]  # a_out, b_out channels
  'accumulators': [{'name': 'v', 'shape': []}],
  'loop_bounds': {'k': {'lb': 0, 'ub': 4}}
}
```

### 3. Proc Generation (`ProcGenerator`)

Generates DSLX proc code with:
- Channel declarations for streaming I/O
- Config function for channel wiring
- Init function for state (accumulator + iteration counter)
- Next function implementing MAC operation with dataflow

**Example Generated Code:**
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

## Key Conversion Patterns Implemented

### MLIR → DSLX Mappings

| MLIR Pattern | DSLX Mapping |
|--------------|--------------|
| `memref<..., "stream:N;SST">` | `chan<T> in/out` |
| `attributes {dataflow}` | Proc network with spawn |
| `pipeline_ii = 1` | Proc next() fires every cycle |
| `affine.for 0 to K` | Proc state with iteration counter |
| `memref.alloc` (accumulator) | Proc state variable |
| `affine.load` from stream | `recv()` from channel |
| `affine.store` to stream | `send()` to channel |
| `arith.mulf` | `float32::mul()` |
| `arith.addf` | `float32::add()` |

## Testing

Run the proc lowerer on Allo systolic array:
```bash
conda run -n allo python test_proc_lowering.py
```

**Expected Output:**
1. MLIR IR showing streaming annotations
2. Pattern detection results
3. Generated DSLX proc code

## What's Working

✅ Streaming pattern detection
✅ PE structure extraction
✅ Proc code generation for single PE
✅ Float32 support via DSLX stdlib
✅ MAC operation with accumulation
✅ Channel-based dataflow

## Next Steps (TODO)

1. **Topology Extraction**: Parse subview operations to build PE connectivity graph
2. **Proc Network Generation**: Generate spawn statements for 2D PE grid
3. **Channel Network**: Auto-generate channel declarations and wiring
4. **FIFO Handling**: Map MLIR FIFOs to channel networks
5. **Data Feeders**: Generate feeder procs for input data loading
6. **Integration**: Hook proc lowerer into main Allo → XLS flow

## Usage Example

```python
from allo.backend.xls.proc_lowerer import MlirToDslxProcLowerer

# Create lowerer from Allo module
proc_lowerer = MlirToDslxProcLowerer(module)

# Check if streaming patterns detected
if proc_lowerer.should_use_procs():
    # Generate DSLX proc code
    dslx_code = proc_lowerer.lower()
    print(dslx_code)
else:
    # Fall back to function-based lowering
    func_lowerer = MlirToDslxLowerer(func_op)
    dslx_code = func_lowerer.lower()
```

## Architecture

```
Allo Program (Python)
  ↓
Allo MLIR IR (with streaming annotations)
  ↓
StreamingPattern.analyze() → Detect dataflow patterns
  ↓
PEExtractor.extract() → Extract PE structure
  ↓
ProcGenerator.generate_proc() → Generate DSLX proc
  ↓
DSLX Proc Code (executable in XLS)
```

## Key Insights

1. **Streaming annotations are the signal**: `"stream:N;SST"` in MLIR directly maps to channels
2. **Dataflow attribute indicates concurrency**: Functions with `{dataflow}` need proc networks
3. **Pipeline II = 1 means pipelined procs**: Each proc fires every cycle
4. **Accumulators become state**: MLIR local buffers map to proc state variables
5. **Loop iterations become proc invocations**: affine.for body → proc next()

## References

- **Conversion Patterns Doc**: [/tmp/MLIR_to_DSLX_Conversion_Patterns.md](/tmp/MLIR_to_DSLX_Conversion_Patterns.md)
- **Working Examples**: [/tmp/systolic_complete.x](/tmp/systolic_complete.x)
- **Allo Systolic IR**: [/tmp/systolic_ir.mlir](/tmp/systolic_ir.mlir)
