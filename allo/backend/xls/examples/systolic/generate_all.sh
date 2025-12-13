#!/bin/bash
# Generate all systolic array variants
# Runs each source.py to get MLIR, then pipes to mlir_to_verilog_proc.py

set -e  # Exit on error

# Activate conda environment
source /home/nvs26/miniconda3/bin/activate allo

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MLIR_TO_VERILOG="$SCRIPT_DIR/../../scripts/mlir_to_verilog_proc.py"

echo "=========================================================================="
echo "Generating All Systolic Array Variants"
echo "=========================================================================="
echo "Using conda environment: allo"
echo ""

VARIANTS=(
    "2x2_k2_uint32"
    "2x2_k2_float32"
    "4x4_k4_uint32"
    "4x4_k4_float32"
)

for variant in "${VARIANTS[@]}"; do
    echo ""
    echo "=========================================================================="
    echo "Processing: $variant"
    echo "=========================================================================="

    variant_dir="$SCRIPT_DIR/$variant"
    source_file="$variant_dir/source.py"

    if [ ! -f "$source_file" ]; then
        echo "ERROR: Source file not found: $source_file"
        continue
    fi

    echo "Step 1: Generating MLIR from Allo source..."
    cd "$variant_dir"
    python3 source.py > temp.mlir

    echo "Step 2: Running full pipeline (MLIR → Verilog)..."
    python3 "$MLIR_TO_VERILOG" temp.mlir -o . --keep-intermediates --name systolic

    # Clean up temp file
    rm -f temp.mlir

    echo "✅ Completed: $variant"
done

echo ""
echo "=========================================================================="
echo "All variants generated successfully!"
echo "=========================================================================="
echo ""
echo "Generated files in each variant directory:"
echo "  - source.py        : Allo Python source"
echo "  - systolic.mlir    : MLIR intermediate representation"
echo "  - systolic.x       : XLS DSLX code"
echo "  - systolic.ir      : XLS intermediate representation"
echo "  - systolic_opt.ir  : Optimized XLS IR"
echo "  - systolic.v       : Final Verilog output"
echo ""