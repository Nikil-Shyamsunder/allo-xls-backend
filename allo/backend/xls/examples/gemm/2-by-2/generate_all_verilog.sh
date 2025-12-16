#!/bin/bash

# Script to generate Verilog from 2x2 GEMM Allo designs with different pipeline stages
# Full pipeline: Allo Python → MLIR → XLS IR → Optimized IR → Verilog

set -e

GEMM_DIR="/scratch/cys36/allo-xls-backend/allo/backend/xls/examples/gemm/2-by-2"
SCRIPTS_DIR="/scratch/cys36/allo-xls-backend/allo/backend/xls/scripts"
XLS_BIN="/scratch/cys36/xls/bazel-bin/xls/tools"

cd $GEMM_DIR

# Designs to generate
DESIGNS=("bench_simple" "bench_compose" "bench_reorder" "bench_reorder2")

# Pipeline stages to test
STAGES=(1 2 3 5)

echo "=========================================="
echo "Generating Verilog for 2x2 GEMM designs"
echo "=========================================="

for design in "${DESIGNS[@]}"; do
    echo ""
    echo "Processing design: $design"
    
    # Check if Python file exists
    if [ ! -f "${design}.py" ]; then
        echo "  ✗ Python file ${design}.py not found, skipping"
        continue
    fi
    
    for stage in "${STAGES[@]}"; do
        echo "  - Generating with $stage pipeline stage(s)..."
        
        # Create output directory
        output_dir="verilog_output/${design}_stage${stage}"
        mkdir -p "$output_dir"
        
        # Step 1: Allo → MLIR
        python ${design}.py > ${output_dir}/design.mlir 2>&1
        
        # Step 2: MLIR → XLS IR
        python $SCRIPTS_DIR/mlir_to_ir_fn.py ${output_dir}/design.mlir -o ${output_dir}/design.ir 2>&1
        if [ $? -ne 0 ]; then
            echo "    ✗ Failed at MLIR → IR conversion"
            continue
        fi
        
        # Step 3: IR → Verilog (skip optimization for now)
        if $XLS_BIN/codegen_main \
            --generator=pipeline \
            --delay_model=unit \
            --pipeline_stages=$stage \
            --reset=rst \
            --reset_data_path=false \
            --reset_active_low=false \
            --reset_asynchronous=false \
            --use_system_verilog=false \
            ${output_dir}/design.ir \
            > ${output_dir}/gemm.v 2>&1; then
            
            size=$(ls -lh ${output_dir}/gemm.v | awk '{print $5}')
            echo "    ✓ Success: ${output_dir}/gemm.v ($size)"
        else
            echo "    ✗ Failed at codegen"
        fi
    done
done

echo ""
echo "=========================================="
echo "Generation complete!"
echo "=========================================="
echo ""
echo "Output files:"
find verilog_output -name "gemm.v" | sort
