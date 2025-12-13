# Verilator Testing for XLS-Generated Designs

This directory contains Verilator testbenches and scripts for measuring pipeline latency and verifying functionality of XLS-generated SystemVerilog designs.

## Overview

Two types of designs are tested:
- **GEMM (Combinational)**: Matrix multiplication with parallel multipliers and fixed pipeline stages
- **Systolic Array (Streaming)**: Matrix multiplication using streaming architecture with PE (Processing Element) reuse

## Directory Structure

```
verilator/
├── gemm/
│   ├── gemm_*.sv              # Generated SystemVerilog designs
│   ├── gemm_tb_template.cpp   # Template testbench for GEMM variants
│   ├── run_all_gemm_tests.sh  # Automated testing script
│   └── gemm_results.csv       # Pipeline latency results
└── systolic/
    ├── systolic.sv            # Systolic array SystemVerilog
    ├── systolic_tb.cpp        # Systolic array testbench
    └── run_systolic_test.sh   # Build and test script
```

## Prerequisites

- Verilator 5.0+ installed
- g++ compiler
- SystemVerilog design files (`.sv`) generated from XLS DSLX

## Testing GEMM Designs

### Single GEMM Test

To test a single GEMM design manually:

```bash
cd /path/to/verilator/directory

# Compile the design and testbench
verilator --cc gemm_design.sv --exe gemm_tb.cpp --build -j 0

# Run the testbench
./obj_dir/Vgemm_design
```

The testbench will output the pipeline latency in cycles (typically 4-5 cycles for combinational GEMMs).

### Automated Testing of All GEMM Variants

Use the automated script to test all GEMM designs:

```bash
cd gemm/
./run_all_gemm_tests.sh
```

**What it does:**
1. Detects all `gemm_*.sv` files in the directory
2. Automatically identifies port names (handles variations like `A/B`, `a/b`, `arg0/arg1`)
3. Generates custom testbenches for each design
4. Compiles and runs tests
5. Outputs results to `gemm_results.csv`

**Output format** (`gemm_results.csv`):
```csv
design,pipeline_latency_cycles
gemm_chat_2_0,5
gemm_chat_3_1,5
gemm_claude_4,5
```

### Understanding GEMM Results

**Pipeline Latency**: Number of clock cycles from when inputs are applied until the correct output appears.

**Typical values:**
- **4-5 cycles**: Standard for combinational GEMM with 5 pipeline stages
- **N/A or error**: Design may use different matrix layout (e.g., transposed)

**Test matrices:**
```
A = [[1, 2],    B = [[5, 6],    Expected C = [[19, 22],
     [3, 4]]         [7, 8]]                   [43, 50]]
```

Calculation: `C[i][j] = Σ_k A[i][k] * B[k][j]`
- `C[0][0] = 1×5 + 2×7 = 19`
- `C[0][1] = 1×6 + 2×8 = 22`
- `C[1][0] = 3×5 + 4×7 = 43`
- `C[1][1] = 3×6 + 4×8 = 50`

## Testing Systolic Array

### Running Systolic Tests

```bash
cd systolic/
./run_systolic_test.sh
```

**What it does:**
1. Compiles `systolic.sv` with `systolic_tb.cpp`
2. Runs the testbench
3. Reports pipeline latency and test status

**Expected output:**
```
=== Building Systolic Array Testbench ===
[Verilator compilation messages]

=== Running Systolic Array Simulation ===
17

✓ Test PASSED
```

### Understanding Systolic Results

**Pipeline Latency**: 17 cycles (typical for 2×2 systolic array)

**Why 17 cycles?**
- **Phase 1 (Cycles 0-5)**: First K-iteration, feed first elements through PE pipeline
- **Phase 2 (Cycles 6-11)**: Second K-iteration, complete accumulation
- **Phase 3 (Cycles 12-17)**: Collect results from all PEs and output

**Architecture differences:**

| Feature | Combinational GEMM | Systolic Array |
|---------|-------------------|----------------|
| Latency | 5 cycles | 17 cycles |
| Multipliers | 4 (one per output) | 4 PEs (reused) |
| Scalability | Poor (grows O(N²)) | Good (grows O(N)) |
| Protocol | Combinational | Streaming channels |

## Testbench Structure

### GEMM Testbench (`gemm_tb.cpp`)

```cpp
#include "Vgemm_design.h"
#include "verilated.h"

int main() {
    Vgemm_design* dut = new Vgemm_design;
    
    // Set inputs (packed into 128-bit signals)
    dut->A[0] = 1; dut->A[1] = 2;  // A = [[1,2],
    dut->A[2] = 3; dut->A[3] = 4;  //      [3,4]]
    
    dut->B[0] = 5; dut->B[1] = 6;  // B = [[5,6],
    dut->B[2] = 7; dut->B[3] = 8;  //      [7,8]]
    
    // Reset and clock
    dut->rst = 1;
    // ... cycle clock ...
    dut->rst = 0;
    
    // Run until correct output appears
    for (int cycle = 0; cycle < 100; cycle++) {
        // Clock edges
        dut->clk = 1; dut->eval();
        dut->clk = 0; dut->eval();
        
        // Check output
        if (dut->out[0] == 19 && dut->out[1] == 22 &&
            dut->out[2] == 43 && dut->out[3] == 50) {
            printf("%d\n", cycle);  // Print latency
            break;
        }
    }
    
    delete dut;
    return 0;
}
```

### Systolic Testbench (`systolic_tb.cpp`)

```cpp
#include "Vsystolic.h"
#include "verilated.h"

int main() {
    Vsystolic* dut = new Vsystolic;
    
    // Note: Signal names use ___05F encoding for double underscores
    dut->systolic___05Farg0_data[0] = 1;  // A matrix
    dut->systolic___05Farg0_data[1] = 2;
    dut->systolic___05Farg0_data[2] = 3;
    dut->systolic___05Farg0_data[3] = 4;
    
    dut->systolic___05Farg1_data[0] = 5;  // B matrix
    dut->systolic___05Farg1_data[1] = 6;
    dut->systolic___05Farg1_data[2] = 7;
    dut->systolic___05Farg1_data[3] = 8;
    
    // Set channel handshake signals
    dut->systolic___05Farg0_valid = 1;
    dut->systolic___05Farg1_valid = 1;
    dut->systolic___05Fout0_ready = 1;
    
    // Reset and run
    dut->rst = 1;
    // ... clock cycles ...
    dut->rst = 0;
    
    // Wait for valid output
    for (int cycle = 0; cycle < 100; cycle++) {
        dut->clk = 1; dut->eval();
        dut->clk = 0; dut->eval();
        
        if (dut->systolic___05Fout0_valid) {
            // Check output values
            if (dut->systolic___05Fout0_data[0] == 19 &&
                dut->systolic___05Fout0_data[1] == 22 &&
                dut->systolic___05Fout0_data[2] == 43 &&
                dut->systolic___05Fout0_data[3] == 50) {
                printf("%d\n", cycle);
                break;
            }
        }
    }
    
    delete dut;
    return 0;
}
```

## Common Issues and Troubleshooting

### Port Name Mismatches

**Problem**: Different XLS builds generate different port names (`A/B` vs `a/b` vs `arg0/arg1`).

**Solution**: The `run_all_gemm_tests.sh` script automatically detects port names:
```bash
# Extract port names from SystemVerilog
PORT1=$(grep -o "input wire \[127:0\] [a-zA-Z_][a-zA-Z0-9_]*" design.sv | awk '{print $4}' | head -1)
PORT2=$(grep -o "input wire \[127:0\] [a-zA-Z_][a-zA-Z0-9_]*" design.sv | awk '{print $4}' | tail -1)
```

### Verilator Signal Name Mangling

**Problem**: Double underscores in Verilog (`systolic__arg0`) become `systolic___05Farg0` in C++.

**Solution**: Use the mangled names directly in testbenches:
```cpp
dut->systolic___05Farg0_data[0] = value;  // Correct
// NOT: dut->systolic__arg0_data[0] = value;  // Won't compile
```

### Build Failures

**Problem**: Verilator compilation errors.

**Check:**
1. Correct `.sv` file path
2. Correct header file: `#include "Vmodule_name.h"` (not `Vmodule_name_2x2.h`)
3. Clean build directory: `rm -rf obj_dir/`

### Wrong Pipeline Latency

**Problem**: Output appears but at wrong cycle count.

**Debug:**
1. Add cycle-by-cycle tracing (print output each cycle)
2. Check reset timing (needs at least 1 full clock cycle)
3. Verify test matrices and expected values

### Matrix Layout Issues

**Problem**: Design produces wrong results (e.g., `[17,23,39,53]` instead of `[19,22,43,50]`).

**Cause**: Design may use transposed matrix layout (column-major vs row-major).

**Solution**: Document as "N/A (different matrix layout)" or adjust test matrices.

## Performance Comparison

Typical results from automated testing:

| Design | Latency | Architecture | Notes |
|--------|---------|--------------|-------|
| gemm_chat_2_0 | 5 cycles | Combinational | Standard pipeline |
| gemm_chat_3_1 | 5 cycles | Combinational | Standard pipeline |
| gemm_claude_4 | 5 cycles | Combinational | Standard pipeline |
| gemm_chat_4 | N/A | Combinational | Transposed layout |
| systolic_2x2 | 17 cycles | Streaming | Multi-proc design |

## Adding New Tests

### For a new GEMM design:

1. Place `.sv` file in `gemm/` directory
2. Run `./run_all_gemm_tests.sh` (automatically detects new designs)
3. Results appear in `gemm_results.csv`

### For a custom testbench:

1. Copy `gemm_tb_template.cpp`
2. Modify port names and module name
3. Build: `verilator --cc design.sv --exe testbench.cpp --build -j 0`
4. Run: `./obj_dir/Vdesign`

## References

- [Verilator Documentation](https://verilator.org/guide/latest/)
- [XLS Documentation](https://google.github.io/xls/)
- [DSLX source files](https://github.com/CynyuS/xls): `xls/xls/examples/gemm/` and `xls/xls/examples/systolic/`
