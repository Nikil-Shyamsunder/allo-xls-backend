#!/bin/bash
# Comprehensive GEMM testing: vanilla GEMM vs systolic GEMM
# Tests both Allo-generated designs and compares cycle counts

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GEMM_EXAMPLES="/scratch/cys36/allo-xls-backend/allo/backend/xls/examples/gemm"
SYSTOLIC_EXAMPLES="/scratch/cys36/allo-xls-backend/allo/backend/xls/examples/systolic"
META_SYSTOLIC="/scratch/cys36/allo-xls-backend/allo/backend/xls/examples/meta_systolic"
XLS_DIR="/scratch/cys36/xls/bazel-bin/xls"
BUILD_BASE="$SCRIPT_DIR/build_gemm_comparison"
RESULTS_DIR="$SCRIPT_DIR/../results"
mkdir -p "$RESULTS_DIR"
RESULTS_CSV="$RESULTS_DIR/gemm_comparison_results.csv"

echo "=========================================="
echo "GEMM vs Systolic GEMM Comparative Analysis"
echo "=========================================="
echo ""

# Initialize CSV
echo "Design,Type,Rows,Cols,K,DataType,Pipeline_Stages,Status,Cycle_Count,ASIC_Area,ASIC_Power,Notes" > "$RESULTS_CSV"

# Generic testbench for matrix multiply
create_gemm_testbench() {
    local rows=$1
    local cols=$2
    local k=$3
    local is_float=$4
    local output_file=$5
    
    cat > "$output_file" << 'EOFTB'
// Generic GEMM Testbench
#include "Vsystolic.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <stdio.h>
#include <stdint.h>
#include <cstring>
#include <cmath>

#ifndef ROWS
#define ROWS 2
#endif
#ifndef COLS
#define COLS 2
#endif
#ifndef K_BOUND
#define K_BOUND 2
#endif

// Float conversion helpers
uint32_t float_to_bits(float f) {
    uint32_t result;
    memcpy(&result, &f, sizeof(float));
    return result;
}

float bits_to_float(uint32_t bits) {
    float result;
    memcpy(&result, &bits, sizeof(float));
    return result;
}

void compute_expected(
#ifdef IS_FLOAT
    const float A[ROWS][K_BOUND], const float B[K_BOUND][COLS], float C[ROWS][COLS]
#else
    const int32_t A[ROWS][K_BOUND], const int32_t B[K_BOUND][COLS], int32_t C[ROWS][COLS]
#endif
) {
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
#ifdef IS_FLOAT
            float sum = 0.0f;
#else
            int32_t sum = 0;
#endif
            for (int k = 0; k < K_BOUND; k++) {
                sum += A[i][k] * B[k][j];
            }
            C[i][j] = sum;
        }
    }
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsystolic* dut = new Vsystolic;
    
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    dut->trace(tfp, 99);
    tfp->open("gemm_test.vcd");
    
    const char* max_cycles_env = getenv("MAX_CYCLES");
    const int max_cycles = max_cycles_env ? atoi(max_cycles_env) : 1000;
    
#ifdef IS_FLOAT
    float A[ROWS][K_BOUND];
    float B[K_BOUND][COLS];
    float C_expected[ROWS][COLS];
#else
    int32_t A[ROWS][K_BOUND];
    int32_t B[K_BOUND][COLS];
    int32_t C_expected[ROWS][COLS];
#endif
    
    // Initialize test data
    int val = 1;
    for (int i = 0; i < ROWS; i++) {
        for (int k = 0; k < K_BOUND; k++) {
#ifdef IS_FLOAT
            A[i][k] = (float)val++;
#else
            A[i][k] = val++;
#endif
        }
    }
    for (int k = 0; k < K_BOUND; k++) {
        for (int j = 0; j < COLS; j++) {
#ifdef IS_FLOAT
            B[k][j] = (float)val++;
#else
            B[k][j] = val++;
#endif
        }
    }
    
    compute_expected(A, B, C_expected);
    
    // Pack input data
    uint32_t A_packed[ROWS * K_BOUND];
    uint32_t B_packed[K_BOUND * COLS];
    
    for (int i = 0; i < ROWS * K_BOUND; i++) {
#ifdef IS_FLOAT
        A_packed[i] = float_to_bits(((float*)A)[i]);
#else
        A_packed[i] = (uint32_t)((int32_t*)A)[i];
#endif
    }
    for (int i = 0; i < K_BOUND * COLS; i++) {
#ifdef IS_FLOAT
        B_packed[i] = float_to_bits(((float*)B)[i]);
#else
        B_packed[i] = (uint32_t)((int32_t*)B)[i];
#endif
    }
    
    // Set inputs
    for (int i = 0; i < ROWS * K_BOUND; i++) {
        dut->systolic___05Farg0[i] = A_packed[i];
    }
    for (int i = 0; i < K_BOUND * COLS; i++) {
        dut->systolic___05Farg1[i] = B_packed[i];
    }
    
    dut->systolic___05Farg0_vld = 1;
    dut->systolic___05Farg1_vld = 1;
    dut->systolic___05Fout0_rdy = 1;
    
    // Reset
    dut->clk = 0;
    dut->rst = 1;
    dut->eval();
    tfp->dump(0);
    dut->clk = 1;
    dut->eval();
    tfp->dump(1);
    dut->clk = 0;
    dut->rst = 0;
    dut->eval();
    tfp->dump(2);
    
    // Run simulation
    bool inputs_accepted = false;
    int cycle = 0;
    
    for (cycle = 0; cycle < max_cycles; cycle++) {
        dut->clk = 0;
        dut->eval();
        tfp->dump(2 * cycle + 2);
        
        if (!inputs_accepted && dut->systolic___05Farg0_rdy && dut->systolic___05Farg1_rdy) {
            inputs_accepted = true;
        }
        
        dut->clk = 1;
        dut->eval();
        tfp->dump(2 * cycle + 3);
        
        if (dut->systolic___05Fout0_vld) {
            // Check results
            bool pass = true;
            for (int i = 0; i < ROWS; i++) {
                for (int j = 0; j < COLS; j++) {
                    int idx = i * COLS + j;
                    uint32_t actual_bits = dut->systolic___05Fout0[idx];
#ifdef IS_FLOAT
                    float actual = bits_to_float(actual_bits);
                    float expected = C_expected[i][j];
                    if (fabs(actual - expected) > 0.001f) {
                        pass = false;
                    }
#else
                    int32_t actual = (int32_t)actual_bits;
                    int32_t expected = C_expected[i][j];
                    if (actual != expected) {
                        pass = false;
                    }
#endif
                }
            }
            
            if (pass) {
                printf("✓ Test PASSED at cycle %d\n", cycle);
                tfp->close();
                delete tfp;
                delete dut;
                return 0;
            } else {
                printf("✗ Test FAILED - incorrect results at cycle %d\n", cycle);
                tfp->close();
                delete tfp;
                delete dut;
                return 1;
            }
        }
    }
    
    printf("✗ Test FAILED - no valid output after %d cycles\n", max_cycles);
    tfp->close();
    delete tfp;
    delete dut;
    return 1;
}
EOFTB
}

# Test a design variant
test_design() {
    local design_type=$1  # "vanilla_gemm" or "systolic_gemm" or "meta_systolic"
    local variant_dir=$2
    local stages=$3
    local variant_name=$(basename "$variant_dir")
    
    # Parse dimensions from directory name
    if [[ $variant_name =~ ([0-9]+)-by-([0-9]+) ]]; then
        local rows=${BASH_REMATCH[1]}
        local cols=${BASH_REMATCH[2]}
        local k=$rows  # Assume square for GEMM
    elif [[ $variant_name =~ ([0-9]+)x([0-9]+)_k([0-9]+)_([a-z0-9]+) ]]; then
        local rows=${BASH_REMATCH[1]}
        local cols=${BASH_REMATCH[2]}
        local k=${BASH_REMATCH[3]}
        local dtype=${BASH_REMATCH[4]}
    else
        return 1
    fi
    
    # Determine data type
    local dtype=${dtype:-int32}
    local is_float=0
    if [[ "$dtype" == "float32" ]]; then
        is_float=1
    fi
    
    echo "Testing $design_type $variant_name ($rows×$cols, k=$k) with $stages stages..."
    
    local build_dir="$BUILD_BASE/${design_type}_${variant_name}_p${stages}"
    mkdir -p "$build_dir"
    
    # Check for IR
    local ir_file=""
    if [ -f "$variant_dir/systolic_opt.ir" ]; then
        ir_file="$variant_dir/systolic_opt.ir"
    elif [ -f "$variant_dir/gemm_opt.ir" ]; then
        ir_file="$variant_dir/gemm_opt.ir"
    else
        echo "  ✗ No optimized IR found"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,MISSING_IR,N/A,N/A,N/A,No IR file" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Extract top name
    local top_name=$(grep "top proc" "$ir_file" | head -1 | sed 's/.*top proc \([^(]*\).*/\1/' || grep "^proc" "$ir_file" | head -1 | awk '{print $2}')
    if [ -z "$top_name" ]; then
        echo "  ✗ No top name"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,ERROR,N/A,N/A,N/A,No top name" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Generate Verilog
    $XLS_DIR/tools/codegen_main \
        --generator=pipeline \
        --delay_model=unit \
        --pipeline_stages=$stages \
        --reset=rst \
        --reset_data_path=false \
        --reset_active_low=false \
        --reset_asynchronous=false \
        --use_system_verilog=true \
        --top=$top_name \
        --multi_proc=true \
        --streaming_channel_data_suffix= \
        --streaming_channel_valid_suffix=_vld \
        --streaming_channel_ready_suffix=_rdy \
        "$ir_file" > "$build_dir/systolic.v" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Codegen failed"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,CODEGEN_FAIL,N/A,N/A,N/A,Verilog error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Copy FIFO wrapper
    cp /scratch/cys36/xls/xls/modules/zstd/rtl/xls_fifo_wrapper.sv "$build_dir/" 2>/dev/null
    
    # Create testbench
    create_gemm_testbench $rows $cols $k $is_float "$build_dir/gemm_tb.cpp"
    
    # Compile
    local cflags="-DROWS=$rows -DCOLS=$cols -DK_BOUND=$k"
    if [ $is_float -eq 1 ]; then
        cflags="$cflags -DIS_FLOAT"
    fi
    
    verilator --cc --exe --trace --build -j 0 --Wno-fatal \
        -CFLAGS "$cflags" \
        --Mdir "$build_dir/obj_dir" \
        "$build_dir/systolic.v" \
        "$build_dir/xls_fifo_wrapper.sv" \
        "$build_dir/gemm_tb.cpp" > "$build_dir/verilator.log" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Verilator failed"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,VERILATOR_FAIL,N/A,N/A,N/A,Compilation error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Run test
    cd "$build_dir/obj_dir"
    local max_cycles=$((200 + rows * cols * k * 20))
    MAX_CYCLES=$max_cycles timeout 30s ./Vsystolic > "$build_dir/test.log" 2>&1
    local result=$?
    
    if [ $result -eq 0 ]; then
        local cycle=$(grep "PASSED at cycle" "$build_dir/test.log" | sed 's/.*cycle //')
        echo "  ✓ PASSED at cycle $cycle"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,PASS,$cycle,TBD,TBD," >> "$RESULTS_CSV"
    else
        echo "  ✗ FAILED/TIMEOUT"
        echo "$design_type,$variant_name,$rows,$cols,$k,$dtype,$stages,FAIL,N/A,N/A,N/A,Test failed" >> "$RESULTS_CSV"
    fi
    
    cd "$SCRIPT_DIR"
}

# Test all variants
echo "Testing Vanilla GEMM designs..."
if [ -d "$GEMM_EXAMPLES" ]; then
    for variant_dir in "$GEMM_EXAMPLES"/*/ ; do
        if [ -d "$variant_dir" ]; then
            for stages in 2 3 5; do
                test_design "vanilla_gemm" "$variant_dir" $stages
            done
        fi
    done
fi

echo ""
echo "Testing Systolic GEMM (library-based)..."
if [ -d "$SYSTOLIC_EXAMPLES" ]; then
    for variant_dir in "$SYSTOLIC_EXAMPLES"/*/ ; do
        if [ -d "$variant_dir" ]; then
            for stages in 2 3 5; do
                test_design "systolic_gemm" "$variant_dir" $stages
            done
        fi
    done
fi

echo ""
echo "Testing Meta/Dataflow Systolic..."
if [ -d "$META_SYSTOLIC" ]; then
    for variant_dir in "$META_SYSTOLIC"/*/ ; do
        if [ -d "$variant_dir" ] && [ "$(basename $variant_dir)" != "verilator" ]; then
            for stages in 2 3 5; do
                test_design "meta_systolic" "$variant_dir" $stages
            done
        fi
    done
fi

echo ""
echo "=========================================="
echo "Testing Complete"
echo "=========================================="
echo "Results: $RESULTS_CSV"
echo ""

# Generate summary
echo "Summary by Design Type:"
echo "======================="
for type in vanilla_gemm systolic_gemm meta_systolic; do
    pass=$(awk -F, -v t=$type '$1==t && $8=="PASS" {count++} END {print count+0}' "$RESULTS_CSV")
    total=$(awk -F, -v t=$type '$1==t {count++} END {print count+0}' "$RESULTS_CSV")
    if [ $total -gt 0 ]; then
        echo "  $type: $pass/$total passed"
    fi
done

echo ""
echo "Best configurations (lowest cycle count):"
awk -F, 'NR>1 && $8=="PASS" {print $1"_"$2,$9,$7}' "$RESULTS_CSV" | \
    sort -t_ -k1,2 -k3n | \
    awk '{if($1!=prev) {print; prev=$1}}' | \
    while read design cycles stages; do
        printf "  %-40s: %3d cycles @ %d stages\n" "$design" "$cycles" "$stages"
    done
