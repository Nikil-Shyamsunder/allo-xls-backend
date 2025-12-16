# Verilator Testing for XLS-Generated Designs

Comprehensive testing infrastructure for XLS-generated SystemVerilog designs with automated test suites, comparative analysis, and detailed performance metrics.

## Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Quick Start](#quick-start)
- [Key Findings](#key-findings)
- [Test Infrastructure](#test-infrastructure)
- [Results and Analysis](#results-and-analysis)
- [Understanding the Designs](#understanding-the-designs)
- [Troubleshooting](#troubleshooting)
- [Advanced Usage](#advanced-usage)

## Overview

**Design Types Tested:**
- **GEMM (Combinational)**: Matrix multiplication with parallel multipliers and fixed pipeline stages
- **Systolic Array (Streaming)**: Matrix multiplication using streaming architecture with PE (Processing Element) reuse
- **Meta/Dataflow Systolic**: Allo-generated systolic arrays from MLIR with configurable dimensions and data types

**Key Features:**
- Automated testing with multiple pipeline configurations
- CSV-based result tracking and comparative analysis
- Support for int32, uint32, and float32 data types
- VCD waveform tracing for debugging
- Comprehensive test scripts for all design variants

## Directory Structure

```
verilator/
│
├── README.md                          # This comprehensive guide
├── results/                           # All test results (CSV files)
│   ├── pipeline_results.csv           # Meta systolic pipeline tests
│   ├── xls_library_results.csv        # XLS library systolic tests
│   ├── gemm_results.csv               # GEMM design tests
│   ├── gemm_comparison_results.csv    # GEMM vs Systolic comparison
│   └── comparative_analysis.csv       # Combined analysis
│
├── gemm/                              # GEMM-specific tests
│   ├── gemm_*.sv                      # Generated SystemVerilog designs
│   ├── gemm_tb_template.cpp           # Template testbench for GEMM variants
│   ├── run_all_gemm_tests.sh          # Automated GEMM testing
│   └── test_gemm_comparison.sh        # GEMM vs Systolic comparison
│
└── systolic/                          # Systolic array tests
    ├── test_all_pipeline_stages.sh    # Main: comprehensive pipeline testing (1,2,3,5,7)
    ├── test_xls_library.sh            # XLS library & Allo systolic tests
    ├── generate_comparative_analysis.sh # Combine all results
    ├── run_all_tests.sh               # Quick test of all meta systolic variants
    ├── run_generic_test.sh            # Single variant test runner
    ├── run_4x4_test.sh                # Dedicated 4x4 debugging
    ├── systolic_tb_generic.cpp        # Generic testbench (float/int support)
    ├── systolic_4x4_tb.cpp            # 4x4-specific testbench
    └── build_*/                       # Build artifacts (gitignored)
```

## Quick Start

### Complete Test Suite

```bash
cd /scratch/cys36/allo-xls-backend/allo/backend/xls/tests/verilator

# 1. Test Allo meta systolic arrays with all pipeline stages
cd systolic
./test_all_pipeline_stages.sh

# 2. Test Allo library systolic designs with different pipeline stages
./test_library_systolic.sh

# 3. Run GEMM comparison tests
cd ../gemm
./test_gemm_comparison.sh

# 4. Generate comprehensive comparative analysis
cd ../systolic
./generate_comparative_analysis.sh

# 5. View results
cat ../results/comparative_analysis.csv
```

### Quick Single Tests

```bash
# Test single systolic variant
cd systolic
./run_generic_test.sh 2x2_k2_int32 2

# Test all GEMM designs
cd ../gemm
./run_all_gemm_tests.sh
```

### View Results

```bash
# All CSV results are in results/ directory
cd results
ls -la
cat pipeline_results.csv
cat comparative_analysis.csv
```

## Key Findings

### Critical Discovery: Pipeline Stage Dependency

**4x4 systolic arrays ONLY work with 2 pipeline stages.** All larger pipeline configurations (3, 5, 7) result in timeout/deadlock.

### Pipeline Stage Analysis

| Pipeline Stages | Success Rate | 2×2 | 3×3 | 4×4 | Notes |
|-----------------|--------------|-----|-----|-----|-------|
| 1               | 0%           | ✗   | ✗   | ✗   | XLS codegen fails |
| **2**           | **100%**     | ✓   | ✓   | ✓   | **Universal compatibility** |
| 3               | 75%          | ✓   | ✓   | ✗   | 4×4 fails (timeout) |
| 5               | 75%          | ✓   | ✓   | ✗   | 4×4 fails (timeout) |
| 7               | 75%          | ✓   | ✓   | ✗   | 4×4 fails (timeout) |

### Performance by Array Size (2 Pipeline Stages)

| Array Size | Data Type | Cycles | Notes |
|------------|-----------|--------|-------|
| 2×2        | float32   | 16     | Fastest float config |
| 2×2        | int32     | 18     | Standard integer |
| 2×2        | uint32    | 18     | Unsigned variant |
| 3×3        | uint32    | 26     | Medium complexity |
| 4×4        | int32     | 38     | **ONLY works @ 2 stages** |

### Cycle Count Scaling with Pipeline Stages

More pipeline stages = slower execution for working configurations:

| Variant | 2 stages | 3 stages | 5 stages | 7 stages | Slowdown |
|---------|----------|----------|----------|----------|----------|
| 2×2 int32 | 18 | 19 | 22 | 30 | +67% |
| 3×3 uint32 | 26 | 27 | 30 | 41 | +58% |
| 2×2 float32 | 16 | 17 | 18 | 19 | +19% |
| 4×4 int32 | 38 | TIMEOUT | TIMEOUT | TIMEOUT | N/A |

### Root Cause Analysis

The 4×4 array has significantly more complexity:
- **16 processing elements** (vs 4 for 2×2, 9 for 3×3)
- **56 internal FIFOs** (horizontal, vertical, result channels)
- **Deeper data propagation paths**

With 3+ pipeline stages, the additional pipeline registers create timing/control issues that manifest as a **proc network deadlock**, preventing valid output from ever being generated.

### Recommendation

**⚠️ Use 2 pipeline stages for all systolic array configurations** to ensure:
- ✓ Universal compatibility (works for all sizes)
- ✓ Optimal performance (lowest cycle counts)
- ✓ No timeout/deadlock issues

## Test Infrastructure

### Primary Test Scripts

| Script | Purpose | Output File | Duration |
|--------|---------|-------------|----------|
| `test_all_pipeline_stages.sh` | Test meta systolic with stages 1,2,3,5,7 | `pipeline_results.csv` | ~5-10 min |
| `test_xls_library.sh` | Test XLS library and Allo systolic | `xls_library_results.csv` | ~3-5 min |
| `test_gemm_comparison.sh` | Compare GEMM implementations | `gemm_comparison_results.csv` | ~5-8 min |
| `generate_comparative_analysis.sh` | Combine all results | `comparative_analysis.csv` | <1 min |

### Supporting Scripts

| Script | Purpose | Use Case |
|--------|---------|----------|
| `run_all_tests.sh` | Quick test of all meta systolic variants | Smoke testing |
| `run_generic_test.sh` | Test a single variant | Debugging specific config |
| `run_4x4_test.sh` | Debug 4×4 array specifically | 4×4 troubleshooting |
| `run_all_gemm_tests.sh` | Test all GEMM design files | GEMM validation |

### Test Variants

**Meta Systolic Arrays (Allo-generated from MLIR):**
- `2x2_k2_float32`: 2×2 array, K=2, float32 data
- `2x2_k2_int32`: 2×2 array, K=2, int32 data
- `3x3_k2_uint32`: 3×3 array, K=2, uint32 data
- `4x4_k4_int32`: 4×4 array, K=4, int32 data

**XLS Library Systolic:**
- `xls_library_systolic`: 2×2 array, K=4 (hardcoded in XLS)

**Allo Systolic:**
- Various configurations from `/allo/backend/xls/examples/systolic/`

**GEMM Designs:**
- Multiple generated designs: `gemm_chat_2_0`, `gemm_chat_3_1`, `gemm_claude_4`, etc.

## Results and Analysis

### CSV Output Format

#### pipeline_results.csv
```csv
Variant,Rows,Cols,K,Type,Pipeline_Stages,Status,Cycle_Count,Notes
2x2_k2_float32,2,2,2,float32,2,PASS,16,
2x2_k2_int32,2,2,2,int32,2,PASS,18,
3x3_k2_uint32,3,3,2,uint32,2,PASS,26,
4x4_k4_int32,4,4,4,int32,2,PASS,38,
4x4_k4_int32,4,4,4,int32,3,NO_OUTPUT,1480,No valid output
```

#### xls_library_results.csv
```csv
Design,Source,Rows,Cols,K,Type,Pipeline_Stages,Status,Cycle_Count,Notes
xls_library_systolic,library,2,2,4,int32,2,PASS,18,
allo_systolic_2x2,allo_systolic,2,2,4,uint32,2,PASS,18,
```

#### gemm_comparison_results.csv
```csv
Design,Type,Rows,Cols,K,DataType,Pipeline_Stages,Status,Cycle_Count,ASIC_Area,ASIC_Power,Notes
vanilla_gemm_2x2,vanilla_gemm,2,2,2,int32,5,PASS,5,,,Combinational
systolic_gemm_2x2,systolic_gemm,2,2,2,int32,2,PASS,18,,,Streaming
meta_systolic_2x2,meta_systolic,2,2,2,int32,2,PASS,18,,,Dataflow
```

#### comparative_analysis.csv
Combined results from all test suites with unified format for cross-comparison.

### Interpreting Results

**Status Values:**
- `PASS`: Test successful, output matches expected
- `NO_OUTPUT`: Design runs but produces no valid output (deadlock/timeout)
- `FAIL`: Compilation or simulation error
- `TIMEOUT`: Exceeded maximum cycle count (1480 cycles)

**Cycle Count:**
- For `PASS`: Actual cycles to produce valid output
- For `NO_OUTPUT`/`TIMEOUT`: Maximum cycles reached before giving up

**Notes:**
- Additional context about failures or special conditions
- "No valid output" = deadlock in proc network
- "Different matrix layout" = transposed/incompatible matrix organization

## Understanding the Designs

### Architecture Comparison

| Feature | Combinational GEMM | Systolic Array | Meta Systolic |
|---------|-------------------|----------------|---------------|
| **Latency** | 5 cycles | 17-38 cycles | 16-38 cycles |
| **Multipliers** | N² (one per output) | N PEs (reused) | N² PEs |
| **Scalability** | Poor (O(N²)) | Good (O(N)) | Good (O(N)) |
| **Protocol** | Combinational | Streaming channels | Proc network |
| **Flexibility** | Fixed size | Fixed size | Configurable |
| **Pipeline** | 5 stages (fixed) | Variable | Variable |

### GEMM (Combinational)

**Architecture:**
- Parallel multipliers (one per output element)
- Fixed 5-stage pipeline
- Direct combinational logic
- No data reuse between cycles

**Performance:**
- **Latency**: 4-5 cycles (consistent)
- **Area**: High (many multipliers)
- **Power**: High (all multipliers active)

**Best for**: Small matrices, low-latency requirements

### Systolic Array (Streaming)

**Architecture:**
- Processing Elements (PEs) in grid layout
- Data flows through PEs (horizontal, vertical)
- Results accumulate in PEs
- Streaming channel protocol (valid/ready handshake)

**Performance:**
- **Latency**: 16-38 cycles (scales with size)
- **Area**: Medium (PE reuse)
- **Power**: Medium (sequential operation)

**Best for**: Large matrices, energy efficiency

### Meta/Dataflow Systolic

**Architecture:**
- Generated from high-level MLIR specification
- Configurable dimensions and data types
- Proc network with FIFOs
- Dataflow/synchronous message passing

**Performance:**
- **Latency**: 16-38 cycles (depends on config)
- **Area**: Configurable
- **Power**: Configurable

**Best for**: Design space exploration, custom requirements

### Why Systolic is Slower than GEMM

Despite higher latency, systolic arrays have advantages:

1. **Scalability**: For 8×8 matrix:
   - GEMM needs 64 multipliers
   - Systolic needs only 8 PEs

2. **Energy efficiency**: 
   - GEMM: All multipliers active every cycle
   - Systolic: PEs operate sequentially

3. **Memory bandwidth**:
   - GEMM: High bandwidth (all inputs simultaneously)
   - Systolic: Low bandwidth (streaming inputs)

**Example: 2×2 matrix multiply**
```
A = [[1, 2],    B = [[5, 6],    C = [[19, 22],
     [3, 4]]         [7, 8]]         [43, 50]]
```

**GEMM approach (cycle 5):**
- 4 multipliers compute all products simultaneously
- 4 adders sum the products
- Output appears at cycle 5

**Systolic approach (cycle 16-18):**
- Cycle 0-5: Load first row/column into PEs
- Cycle 6-11: Process second K-iteration
- Cycle 12-18: Drain results from PEs

## Troubleshooting

### Common Issues

#### 1. Port Name Mismatches

**Problem**: Different XLS builds generate different port names (`A/B` vs `a/b` vs `arg0/arg1`).

**Solution**: Scripts automatically detect port names:
```bash
PORT1=$(grep -o "input wire \[127:0\] [a-zA-Z_][a-zA-Z0-9_]*" design.sv | awk '{print $4}' | head -1)
```

#### 2. Verilator Signal Name Mangling

**Problem**: Double underscores in Verilog (`systolic__arg0`) become `systolic___05Farg0` in C++.

**Solution**: Use mangled names in testbenches:
```cpp
dut->systolic___05Farg0_data[0] = value;  // Correct
```

#### 3. 4×4 Array Hangs with 3+ Stages

**Problem**: 4×4 arrays timeout with pipeline stages ≥ 3.

**Solution**: Always use 2 pipeline stages for systolic arrays.

#### 4. Float Comparison Issues

**Problem**: Float equality checks fail due to precision.

**Solution**: Use epsilon-based comparison:
```cpp
bool float_equal(float a, float b) {
    return fabs(a - b) < 1e-5;
}
```

#### 5. Build Directory Conflicts

**Problem**: Stale build artifacts cause compilation errors.

**Solution**: Clean build directories:
```bash
rm -rf build_*
./test_all_pipeline_stages.sh  # Rebuilds clean
```

#### 6. VCD Files Too Large

**Problem**: VCD trace files exceed disk space.

**Solution**: Limit trace scope or disable tracing:
```cpp
// In testbench, comment out:
// tfp = new VerilatedVcdC;
// dut->trace(tfp, 99);
```

### Debugging Techniques

#### Enable VCD Tracing

Modify testbench to enable waveform tracing:
```cpp
#include "verilated_vcd_c.h"

VerilatedVcdC* tfp = new VerilatedVcdC;
dut->trace(tfp, 99);
tfp->open("dump.vcd");

// In simulation loop:
tfp->dump(main_time++);

// After simulation:
tfp->close();
```

View with GTKWave:
```bash
gtkwave dump.vcd
```

#### Add Debug Prints

```cpp
// Print every cycle
printf("Cycle %d: out_vld=%d, out[0]=%d\n", 
       cycle, dut->systolic___05Fout0_valid, 
       dut->systolic___05Fout0_data[0]);
```

#### Check IR for Deadlocks

```bash
cd /scratch/cys36/xls/bazel-bin/xls/dslx
./interpreter_main /path/to/systolic.x --trace_channels
```

Look for channels that never send/receive.

## Advanced Usage

### Customizing Test Parameters

#### Change Maximum Cycles

In `run_generic_test.sh`:
```bash
MAX_CYCLES=$((200 + ROWS * COLS * K * 20))  # Increase multiplier
```

#### Add New Variants

1. Create DSLX/MLIR source in examples directory
2. Add entry to test script:
```bash
test_variant "5x5_k3_float32" 5 5 3 "float32" 2
```

3. Ensure BUILD file exists for variant

#### Custom Pipeline Stages

Test specific stage configurations:
```bash
./run_generic_test.sh 4x4_k4_int32 4  # Test with 4 stages
```

### Generating New Designs

#### From DSLX

```bash
cd /scratch/cys36/xls
bazel build //xls/dslx:interpreter_main
bazel-bin/xls/dslx/interpreter_main examples/systolic/systolic.x
```

#### From XLS IR to Verilog

```bash
cd /scratch/cys36/xls
bazel build //xls/tools:codegen_main

bazel-bin/xls/tools/codegen_main \
    --generator=pipeline \
    --delay_model=unit \
    --pipeline_stages=2 \
    --module_name=systolic \
    --output_verilog_path=systolic.v \
    design.ir
```

#### From Allo/MLIR

```python
import allo
from allo.ir.types import int32, float32

def systolic(A: int32[2,2], B: int32[2,2]) -> int32[2,2]:
    # Allo DSL specification
    pass

s = allo.customize(systolic)
s.build(target="xls")  # Generates XLS IR
```

### Integration with ASIC Flow

Results CSV includes placeholders for ASIC metrics:
```csv
Design,Type,...,ASIC_Area,ASIC_Power,Notes
```

To populate:
1. Run synthesis on generated Verilog
2. Extract area/power from synthesis reports
3. Add to CSV manually or via script

Example synthesis:
```bash
# Using OpenLane/OpenROAD
cd /path/to/openlane
./flow.tcl -design systolic -tag test_run
# Extract metrics from reports/
```

## Prerequisites

### Required Tools

- **Verilator** 5.0+ (tested with 5.035)
  ```bash
  sudo apt-get install verilator
  ```

- **g++** with C++14 support
  ```bash
  g++ --version  # Should be 7.0+
  ```

- **XLS tools** (for design generation)
  ```bash
  git clone https://github.com/google/xls.git
  cd xls
  bazel build //xls/...
  ```

- **Allo** (for meta-programming designs)
  ```bash
  git clone https://github.com/cornell-zhang/allo.git
  cd allo
  pip install -e .
  ```

### Optional Tools

- **GTKWave** (for VCD viewing)
  ```bash
  sudo apt-get install gtkwave
  ```

- **OpenROAD** (for ASIC synthesis)
  ```bash
  # Follow OpenROAD installation guide
  ```

## References

### Documentation

- [Verilator Documentation](https://verilator.org/guide/latest/)
- [XLS Documentation](https://google.github.io/xls/)
- [Allo Documentation](https://cornell-zhang.github.io/allo/)
- [SystemVerilog IEEE 1800](https://ieeexplore.ieee.org/document/8299595)

### Source Code

- **XLS DSLX Examples**: `/xls/examples/gemm/`, `/xls/examples/systolic/`
- **Allo Examples**: `/allo-xls-backend/allo/backend/xls/examples/`
- **Test Infrastructure**: `/allo-xls-backend/allo/backend/xls/tests/verilator/`

## Contributing

### Adding New Tests

1. Place design files in appropriate directory (`gemm/` or `systolic/`)
2. Follow naming convention: `design_type_config.sv`
3. Ensure testbench follows template structure
4. Update relevant test script to include new variant
5. Document any special requirements or known issues

### Reporting Issues

Include the following information:
- Design variant and configuration
- Pipeline stages used
- Full error message or symptom
- XLS/Allo version
- Verilator version

### Test Maintenance

All build artifacts are gitignored via `.gitignore`:
```gitignore
**/build_*
build_*/
```

Clean up periodically:
```bash
find . -name "build_*" -type d -exec rm -rf {} +
```

## License

This test infrastructure follows the license of the parent project (Allo XLS Backend).

---

**Last Updated**: 2025
**Maintained By**: CynyuS
**Status**: Active Development
