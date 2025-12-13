# XLS Backend - DSLX Code Generation

AST-based MLIR to DSLX lowering for hardware synthesis.

## Prerequisites

Before running any code, make sure to activate the Allo conda environment:

```bash
conda activate allo
```

Additionally, ensure that the following environment variables are set:
- `LLVM_BUILD_DIR`: Path to your LLVM build directory
- Run on `zhang-21.ece.cornell.edu`
- XLS tools should be available at `/scratch/users/zrs29/xls/xls/`

## Directory Structure

```
allo/backend/xls/
├── dslx_ast/          # AST node definitions
│   ├── proc_ast.py        # Proc AST (channels, spawn, config)
│   ├── function_ast.py    # Function AST (expressions, statements)
│   └── serializer.py      # AST → DSLX text conversion
│
├── builders/          # High-level builders
│   └── proc_builders.py   # Deprecated Grid-based systolic array builders
|   └── xls_systolic_builder.py   # Systolic array builder
│
├── lowering/          # MLIR → DSLX transformation
│   ├── proc_lowerer.py       # Proc-based lowering (systolic arrays)
│   └── function_lowerer.py   # Function-based lowering
│
├── systolic/          # Systolic array extraction
│   ├── extractors.py      # Grid, PE, connectivity extraction from MLIR
│   └── detector.py        # Pattern detection
│
├── utils/             # Utilities
│   ├── codegen_context.py
│   └── debug_utils.py
│
├── scripts/           # Utility scripts
│   ├── mlir_to_verilog_proc.py  # MLIR → Verilog pipeline
│   ├── mlir_to_dslx_fn.py       # MLIR → DSLX function
│   └── mlir_to_ir_fn.py         # MLIR → XLS IR
│
├── examples/          # Example workflows
│   ├── systolic/          # Systolic array examples
│   ├── gemm/              # GEMM benchmarks
│   └── random_testing/    # Random testing
│
└── tests/             # Test suite
```

## Running the Code

### Scripts

The [scripts/](scripts/) directory contains utility scripts for the XLS backend workflow:

#### [scripts/mlir_to_verilog_proc.py](scripts/mlir_to_verilog_proc.py)
Complete MLIR to Verilog pipeline for systolic arrays.

Pipeline: `MLIR → DSLX → XLS IR → Optimized IR → Verilog`

Usage:
```bash
./scripts/mlir_to_verilog_proc.py input.mlir -o output_dir --keep-intermediates
```

Options:
- `--stdin`: Read MLIR from stdin
- `-o, --output-dir DIR`: Output directory (required)
- `--keep-intermediates`: Keep intermediate files (DSLX, IR, etc.)
- `--pipeline-stages N`: Number of pipeline stages (default: 5)
- `--name NAME`: Base name for output files (default: systolic)

#### [scripts/mlir_to_dslx_fn.py](scripts/mlir_to_dslx_fn.py)
Converts MLIR functions to DSLX code (function-based, not proc-based).

Pipeline: `MLIR → DSLX`

Usage:
```bash
./scripts/mlir_to_dslx_fn.py input.mlir -o output.x
cat input.mlir | ./scripts/mlir_to_dslx_fn.py --stdin -o output.x
./scripts/mlir_to_dslx_fn.py input.mlir  # Print to stdout
```

This script generates DSLX function definitions suitable for testing individual operations or building blocks. Unlike [mlir_to_verilog_proc.py](scripts/mlir_to_verilog_proc.py), this produces functions rather than procs (processes with channels).

#### [scripts/mlir_to_ir_fn.py](scripts/mlir_to_ir_fn.py)
Converts MLIR functions directly to XLS IR, bypassing DSLX generation.

Pipeline: `MLIR → XLS IR`

Usage:
```bash
./scripts/mlir_to_ir_fn.py input.mlir -o output.ir
cat input.mlir | ./scripts/mlir_to_ir_fn.py --stdin -o output.ir
./scripts/mlir_to_ir_fn.py input.mlir  # Print to stdout
```

This script generates XLS IR directly from MLIR without the intermediate DSLX step, useful for IR-level optimization and analysis.

### Examples

#### Systolic Array Generation and Testing

Navigate to the systolic examples directory:
```bash
cd allo/backend/xls/examples/systolic
```

**Generate all systolic array variants** (2x2, 4x4 with uint32/float32):
```bash
./generate_all.sh
```

This generates MLIR → DSLX → XLS IR → Verilog for all variants.

**Run tests** for all generated systolic arrays:
```bash
./run_tests.sh
```

#### GEMM Examples

The [examples/gemm/](examples/gemm/) directory contains matrix multiplication benchmarks demonstrating various Allo scheduling optimizations.

##### Benchmark Scripts

Each `bench_*.py` script generates MLIR code with different optimization strategies:

- **[bench_simple.py](examples/gemm/4-by-4/bench_simple.py)**: Simple 3-loop GEMM without optimizations. Generates baseline MLIR from `C[i,j] += A[i,k] * B[k,j]`.

- **[bench_compose.py](examples/gemm/4-by-4/bench_compose.py)**: GEMM using function composition. Splits computation into separate `mm1` and `ele_copy` functions composed together, demonstrating modular design.

- **[bench_split_inner.py](examples/gemm/4-by-4/bench_split_inner.py)**: Applies loop splitting to the inner `j` loop (factor=2). Demonstrates column-oriented tiling.

- **[bench_split_outer.py](examples/gemm/4-by-4/bench_split_outer.py)**: Applies loop splitting to the outer `i` loop (factor=2). Demonstrates row-oriented tiling.

- **[bench_split_both.py](examples/gemm/4-by-4/bench_split_both.py)**: Splits both `i` and `j` loops (factor=2 each). Creates 2D tiling for better cache locality.

- **[bench_split_reorder.py](examples/gemm/4-by-4/bench_split_reorder.py)**: Splits both loops and reorders them to `(i.outer, j.outer, i.inner, j.inner)`. Optimizes for spatial locality by processing tiles together.

These benchmark scripts are available in both [4-by-4/](examples/gemm/4-by-4/) and [32-by-32/](examples/gemm/32-by-32/) directories.

##### Generating GEMM Benchmarks

**Generate all 4x4 GEMM variants (DSLX + IR):**
```bash
cd allo/backend/xls/examples/gemm/4-by-4
./generate_all.sh
```
This runs each `bench_*.py` script, converts the MLIR output to both DSLX and XLS IR, and saves them to `dslx_output/` and `ir_output/` directories.

**Generate all 32x32 GEMM variants (DSLX only):**
```bash
cd allo/backend/xls/examples/gemm/32-by-32
./generate_all.sh
```
This runs each `bench_*.py` script, converts the MLIR output to DSLX, and saves to `dslx_output/`.

##### Running Tests

**4x4 GEMM - DSLX Interpreter Tests:**
```bash
cd allo/backend/xls/examples/gemm/4-by-4
./run_tests.sh
```
Runs all generated DSLX benchmarks through the XLS DSLX interpreter, verifying functional correctness of each optimization variant.

**4x4 GEMM - IR Pipeline Tests:**
```bash
cd allo/backend/xls/examples/gemm/4-by-4
./run_ir_tests.sh
```
Converts DSLX to XLS IR and runs tests in Docker container. Validates the full DSLX→IR conversion pipeline and IR-level execution.

**32x32 GEMM Tests:**
```bash
cd allo/backend/xls/examples/gemm/32-by-32
./run_tests.sh
```
Runs larger 32x32 GEMM benchmarks through the DSLX interpreter, testing scalability of optimizations.

#### Randomized Testing

The [examples/random_testing/](examples/random_testing/) directory contains randomized differential testing infrastructure for validating MLIR→DSLX lowering correctness.

##### Directory Structure

- **[compiler-gen/](examples/random_testing/compiler-gen/)**: DSLX code generated by the compiler (ground truth from Allo MLIR lowering). We had to modify these slightly to match the function interface used by the LLM as well as use signed intead of unsigned ints, which we don't have support for in the compiler yet. 
- **[llm_gen/](examples/random_testing/llm_gen/)**: DSLX code generated by LLM for comparison. Note that we picked some generations from the LLM that are intentionall incorrect to showcase the use of differential testing.
- **[differential/](examples/random_testing/differential/)**: Combined test files that compare compiler-generated vs LLM-generated implementations

##### Running Randomized Tests

```bash
cd allo/backend/xls/examples/random_testing
./run_differential_tests.sh
```

This script runs differential testing using XLS's built-in QuickCheck fuzzing:
- Executes each test file in [differential/](examples/random_testing/differential/) with `--compare=jit` flag
- QuickCheck automatically generates random inputs to test both implementations
- Validates that compiler-generated and LLM-generated DSLX produce identical results
- Reports any discrepancies found during fuzzing

The differential tests use DSLX's `#[quickcheck]` annotations to enable property-based testing, ensuring both code generators produce functionally equivalent outputs across a wide range of random inputs.

## Testing

```bash
# Run AST tests
python test_ast_proc_gen.py
python test_grid_ast_builders.py

# Run lowering tests
python test_proc_lowering.py
```
