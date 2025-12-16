#!/bin/bash

# Script to generate Verilog from 2x2 GEMM DSLX with different pipeline stages
# Usage: ./generate_verilog.sh

set -e

GEMM_DIR="/scratch/cys36/allo-xls-backend/allo/backend/xls/examples/gemm/2-by-2"
XLS_BIN="/scratch/cys36/xls/bazel-bin/xls/tools"

cd $GEMM_DIR/dslx_output

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
    
    # Check if DSLX file exists
    if [ ! -f "${design}.x" ]; then
        echo "  ✗ DSLX file ${design}.x not found, skipping"
        continue
    fi
    
    for stage in "${STAGES[@]}"; do
        echo "  - Generating with $stage pipeline stage(s)..."
        
        # Create output directory
        output_dir="${design}_stage${stage}"
        mkdir -p "$output_dir"
        
        # Generate Verilog
        if $XLS_BIN/codegen_main \
            --generator=pipeline \
            --delay_model=unit \
            --pipeline_stages=$stage \
            --reset=rst \
            --reset_data_path=false \
            --reset_active_low=false \
            --reset_asynchronous=false \
            --use_system_verilog=false \
            ${design}.x \
            > ${output_dir}/gemm.v 2>&1; then
            
            size=$(ls -lh ${output_dir}/gemm.v | awk '{print $5}')
            echo "    ✓ Success: ${output_dir}/gemm.v ($size)"
        else
            echo "    ✗ Failed to generate Verilog"
        fi
    done
done

echo ""
echo "=========================================="
echo "Generation complete!"
echo "=========================================="
echo ""
echo "Summary:"
ls -d bench_*_stage* | sort
