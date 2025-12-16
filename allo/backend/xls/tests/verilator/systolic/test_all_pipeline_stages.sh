#!/bin/bash
# Comprehensive test of all systolic variants with different pipeline stages

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXAMPLES_BASE="$SCRIPT_DIR/../../../examples/meta_systolic"
XLS_DIR="/scratch/cys36/xls/bazel-bin/xls"
BUILD_BASE="$SCRIPT_DIR/build_comprehensive"
RESULTS_DIR="$SCRIPT_DIR/../results"
mkdir -p "$RESULTS_DIR"
RESULTS_CSV="$RESULTS_DIR/pipeline_results.csv"

echo "========================================"
echo "Comprehensive Pipeline Stage Testing"
echo "========================================"
echo ""

# Initialize CSV with header
echo "Variant,Rows,Cols,K,Type,Pipeline_Stages,Status,Cycle_Count,Notes" > "$RESULTS_CSV"

# Find all variants
VARIANTS=$(find "$EXAMPLES_BASE" -mindepth 1 -maxdepth 1 -type d -name "*x*" | sort)

if [ -z "$VARIANTS" ]; then
    echo "Error: No variant directories found in $EXAMPLES_BASE"
    exit 1
fi

echo "Found variants:"
for variant_dir in $VARIANTS; do
    echo "  - $(basename $variant_dir)"
done
echo ""

# Test function
test_variant() {
    local variant_dir=$1
    local stages=$2
    local variant_name=$(basename "$variant_dir")
    
    # Parse variant name: MxN_kK_TYPE
    if [[ $variant_name =~ ([0-9]+)x([0-9]+)_k([0-9]+)_([a-z0-9]+) ]]; then
        local rows=${BASH_REMATCH[1]}
        local cols=${BASH_REMATCH[2]}
        local k=${BASH_REMATCH[3]}
        local type=${BASH_REMATCH[4]}
    else
        echo "Warning: Could not parse variant name: $variant_name"
        return 1
    fi
    
    echo "Testing $variant_name with $stages pipeline stages..."
    
    # Check for optimized IR
    if [ ! -f "$variant_dir/systolic_opt.ir" ]; then
        echo "  ✗ No systolic_opt.ir found"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,MISSING_IR,N/A,No optimized IR file" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Extract top name
    local top_name=$(grep "top proc" "$variant_dir/systolic_opt.ir" | head -1 | sed 's/.*top proc \([^(]*\).*/\1/')
    if [ -z "$top_name" ]; then
        echo "  ✗ Could not extract top proc name"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,ERROR,N/A,Could not extract top name" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Create build directory
    local build_dir="$BUILD_BASE/${variant_name}_p${stages}"
    mkdir -p "$build_dir"
    
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
        "$variant_dir/systolic_opt.ir" > "$build_dir/systolic.v" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Verilog generation failed"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,CODEGEN_FAIL,N/A,Verilog generation error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Copy FIFO wrapper
    cp /scratch/cys36/xls/xls/modules/zstd/rtl/xls_fifo_wrapper.sv "$build_dir/" 2>/dev/null
    
    # Determine testbench based on type
    local tb_file="$SCRIPT_DIR/systolic_tb_generic.cpp"
    local cflags=""
    if [ "$type" == "float32" ]; then
        cflags="-DIS_FLOAT"
    fi
    
    # Set dimensions for testbench
    local extra_cflags="-DROWS=$rows -DCOLS=$cols -DK_BOUND=$k $cflags"
    
    # Compile with Verilator
    verilator --cc --exe --trace --build -j 0 --Wno-fatal \
        -CFLAGS "$extra_cflags" \
        --Mdir "$build_dir/obj_dir" \
        "$build_dir/systolic.v" \
        "$build_dir/xls_fifo_wrapper.sv" \
        "$tb_file" > "$build_dir/verilator.log" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Verilator compilation failed"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,VERILATOR_FAIL,N/A,Compilation error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Calculate reasonable max cycles: base + (rows * cols * k * 20)
    local max_cycles=$((200 + rows * cols * k * 20))
    if [ $max_cycles -lt 500 ]; then
        max_cycles=500
    fi
    
    # Run test with timeout
    cd "$build_dir/obj_dir"
    MAX_CYCLES=$max_cycles timeout 30s ./Vsystolic > "$build_dir/test.log" 2>&1
    local result=$?
    
    if [ $result -eq 0 ]; then
        # Extract cycle count from log
        local cycle=$(grep -E "PASSED at cycle|Output valid at cycle" "$build_dir/test.log" | sed 's/.*cycle //' | head -1)
        if [ -z "$cycle" ]; then
            cycle="UNKNOWN"
        fi
        echo "  ✓ PASSED at cycle $cycle"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,PASS,$cycle," >> "$RESULTS_CSV"
    elif [ $result -eq 124 ]; then
        echo "  ✗ TIMEOUT (>30s)"
        echo "$variant_name,$rows,$cols,$k,$type,$stages,TIMEOUT,$max_cycles,Exceeded 30s wall time" >> "$RESULTS_CSV"
    else
        # Check if it hit cycle limit
        if grep -q "no valid output after" "$build_dir/test.log"; then
            echo "  ✗ TIMEOUT (no output after $max_cycles cycles)"
            echo "$variant_name,$rows,$cols,$k,$type,$stages,NO_OUTPUT,$max_cycles,No valid output" >> "$RESULTS_CSV"
        else
            echo "  ✗ FAILED"
            echo "$variant_name,$rows,$cols,$k,$type,$stages,FAIL,N/A,Test failed" >> "$RESULTS_CSV"
        fi
    fi
    
    cd "$SCRIPT_DIR"
}

# Test each variant with different pipeline stages
for variant_dir in $VARIANTS; do
    variant_name=$(basename "$variant_dir")
    echo ""
    echo "========================================"
    echo "Variant: $variant_name"
    echo "========================================"
    
    # Test stages: 1, 2, 3, 5, 7
    for stages in 1 2 3 5 7; do
        test_variant "$variant_dir" $stages
    done
done

echo ""
echo "========================================"
echo "Testing Complete"
echo "========================================"
echo ""
echo "Results saved to: $RESULTS_CSV"
echo ""

# Generate summary
echo "Summary by variant (best pipeline stage):"
echo "==========================================="
awk -F, 'NR>1 {if ($7=="PASS" && ($1 != prev || $8 < best)) {best=$8; prev=$1; line=$0}} END {print line}' "$RESULTS_CSV" | \
while IFS=, read variant rows cols k type stages status cycle notes; do
    if [ -n "$variant" ]; then
        printf "%-25s %2dx%-2d k=%-2d %-10s | Best: %d stages @ cycle %s\n" \
            "$variant" "$rows" "$cols" "$k" "$type" "$stages" "$cycle"
    fi
done

echo ""
echo "Summary by pipeline stages:"
echo "============================"
for stages in 1 2 3 5 7; do
    pass_count=$(awk -F, -v s=$stages '$6==s && $7=="PASS" {count++} END {print count+0}' "$RESULTS_CSV")
    total_count=$(awk -F, -v s=$stages '$6==s {count++} END {print count+0}' "$RESULTS_CSV")
    echo "  $stages stages: $pass_count/$total_count passed"
done

echo ""
echo "View full results: cat $RESULTS_CSV"
echo "View in columns: column -t -s, $RESULTS_CSV | less -S"
