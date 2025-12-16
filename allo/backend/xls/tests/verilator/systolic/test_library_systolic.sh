#!/bin/bash
# Test XLS library systolic arrays (from /xls/examples/systolic)
# with different pipeline stages and compare with meta/dataflow designs

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
XLS_SYSTOLIC_DIR="/scratch/cys36/xls/xls/examples/systolic"
ALLO_SYSTOLIC_DIR="$SCRIPT_DIR/../../../examples/systolic"
XLS_DIR="/scratch/cys36/xls/bazel-bin/xls"
BUILD_BASE="$SCRIPT_DIR/build_xls_library"
RESULTS_DIR="$SCRIPT_DIR/../results"
mkdir -p "$RESULTS_DIR"
RESULTS_CSV="$RESULTS_DIR/allo_library_results.csv"

echo "========================================"
echo "XLS Library Systolic Array Testing"
echo "========================================"
echo ""

# Initialize CSV
echo "Design,Source,Rows,Cols,K,Type,Pipeline_Stages,Status,Cycle_Count,Notes" > "$RESULTS_CSV"

# Test Allo-generated systolic designs
test_allo_systolic() {
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
        return 1
    fi
    
    echo "Testing Allo systolic $variant_name with $stages stages..."
    
    local build_dir="$BUILD_BASE/allo_${variant_name}_p${stages}"
    mkdir -p "$build_dir"
    
    # Check for optimized IR
    if [ ! -f "$variant_dir/systolic_opt.ir" ]; then
        echo "  ✗ No systolic_opt.ir"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,MISSING_IR,N/A,No optimized IR" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Extract top name
    local top_name=$(grep "top proc" "$variant_dir/systolic_opt.ir" | head -1 | sed 's/.*top proc \([^(]*\).*/\1/')
    if [ -z "$top_name" ]; then
        echo "  ✗ No top name"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,ERROR,N/A,No top name" >> "$RESULTS_CSV"
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
        "$variant_dir/systolic_opt.ir" > "$build_dir/systolic.v" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Codegen failed"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,CODEGEN_FAIL,N/A,Verilog error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Copy FIFO wrapper
    cp /scratch/cys36/xls/xls/modules/zstd/rtl/xls_fifo_wrapper.sv "$build_dir/" 2>/dev/null
    
    # Compile
    local cflags="-DROWS=$rows -DCOLS=$cols -DK_BOUND=$k"
    if [ "$type" == "float32" ]; then
        cflags="$cflags -DIS_FLOAT"
    fi
    
    verilator --cc --exe --trace --build -j 0 --Wno-fatal \
        -CFLAGS "$cflags" \
        --Mdir "$build_dir/obj_dir" \
        "$build_dir/systolic.v" \
        "$build_dir/xls_fifo_wrapper.sv" \
        "$SCRIPT_DIR/systolic_tb_generic.cpp" > "$build_dir/verilator.log" 2>&1
    
    if [ $? -ne 0 ]; then
        echo "  ✗ Verilator failed"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,VERILATOR_FAIL,N/A,Compilation error" >> "$RESULTS_CSV"
        return 1
    fi
    
    # Run test
    cd "$build_dir/obj_dir"
    local max_cycles=$((200 + rows * cols * k * 20))
    if [ $max_cycles -lt 500 ]; then
        max_cycles=500
    fi
    
    MAX_CYCLES=$max_cycles timeout 30s ./Vsystolic > "$build_dir/test.log" 2>&1
    local result=$?
    
    if [ $result -eq 0 ]; then
        local cycle=$(grep -E "PASSED at cycle|Output valid at cycle" "$build_dir/test.log" | sed 's/.*cycle //' | head -1)
        echo "  ✓ PASSED at cycle $cycle"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,PASS,$cycle," >> "$RESULTS_CSV"
    elif [ $result -eq 124 ]; then
        echo "  ✗ TIMEOUT"
        echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,TIMEOUT,$max_cycles,Wall time exceeded" >> "$RESULTS_CSV"
    else
        if grep -q "no valid output" "$build_dir/test.log"; then
            echo "  ✗ NO OUTPUT"
            echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,NO_OUTPUT,$max_cycles,No valid output" >> "$RESULTS_CSV"
        else
            echo "  ✗ FAILED"
            echo "allo_$variant_name,allo_systolic,$rows,$cols,$k,$type,$stages,FAIL,N/A,Test failed" >> "$RESULTS_CSV"
        fi
    fi
    
    cd "$SCRIPT_DIR"
}

# Test Allo-generated systolic arrays
echo ""
echo "========================================"
echo "Testing Allo Systolic Arrays"
echo "========================================"

ALLO_VARIANTS=$(find "$ALLO_SYSTOLIC_DIR" -mindepth 1 -maxdepth 1 -type d | sort)
for variant_dir in $ALLO_VARIANTS; do
    variant_name=$(basename "$variant_dir")
    echo ""
    echo "--- $variant_name ---"
    for stages in 2 3 5; do
        test_allo_systolic "$variant_dir" $stages
    done
done

echo ""
echo "========================================"
echo "Testing Complete"
echo "========================================"
echo "Results: $RESULTS_CSV"
echo ""

# Summary
echo "Summary by Design Source:"
echo "=========================="
for source in xls_library allo_systolic; do
    pass=$(awk -F, -v s=$source '$2==s && $8=="PASS" {count++} END {print count+0}' "$RESULTS_CSV")
    total=$(awk -F, -v s=$source '$2==s {count++} END {print count+0}' "$RESULTS_CSV")
    echo "  $source: $pass/$total passed"
done

echo ""
echo "Best pipeline stage per design (lowest cycle count):"
for design in $(awk -F, 'NR>1 {print $1}' "$RESULTS_CSV" | sort -u); do
    best=$(awk -F, -v d="$design" '$1==d && $8=="PASS" {if(min=="" || $9<min) {min=$9; line=$0}} END {print line}' "$RESULTS_CSV")
    if [ -n "$best" ]; then
        name=$(echo "$best" | cut -d, -f1)
        stages=$(echo "$best" | cut -d, -f7)
        cycles=$(echo "$best" | cut -d, -f9)
        printf "  %-30s: %d stages @ %3d cycles\n" "$name" "$stages" "$cycles"
    fi
done
