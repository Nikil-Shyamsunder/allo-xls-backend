#!/bin/bash
# Generate DSLX and IR for all 4x4 GEMM benchmarks

set -e  # Exit on error

# Activate conda environment
source /home/nvs26/miniconda3/bin/activate allo

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MLIR_TO_DSLX="$SCRIPT_DIR/../../../scripts/mlir_to_dslx_fn.py"
MLIR_TO_IR="$SCRIPT_DIR/../../../scripts/mlir_to_ir_fn.py"

# Create output directories
mkdir -p "$SCRIPT_DIR/dslx_output"
mkdir -p "$SCRIPT_DIR/ir_output"

echo "=========================================================================="
echo "Generating 4x4 GEMM Benchmarks (DSLX + IR)"
echo "=========================================================================="
echo "Using conda environment: allo"
echo ""

# Find all bench_*.py files
for bench_file in "$SCRIPT_DIR"/bench_*.py; do
    if [ ! -f "$bench_file" ]; then
        continue
    fi

    bench_name=$(basename "$bench_file" .py)
    echo "Processing: $bench_name"

    # Generate MLIR from Python source
    echo "  [1/2] Generating MLIR..."
    cd "$SCRIPT_DIR"
    python3 "$bench_file" > /tmp/temp_${bench_name}.mlir

    # Generate DSLX from MLIR
    echo "  [2/2] MLIR → DSLX..."
    python3 "$MLIR_TO_DSLX" /tmp/temp_${bench_name}.mlir -o "$SCRIPT_DIR/dslx_output/${bench_name}.x"

    # Generate IR from MLIR
    echo "  [3/3] MLIR → IR..."
    python3 "$MLIR_TO_IR" /tmp/temp_${bench_name}.mlir -o "$SCRIPT_DIR/ir_output/${bench_name}.ir"

    # Clean up temp file
    rm -f /tmp/temp_${bench_name}.mlir

    echo "  ✓ Completed: $bench_name"
    echo ""
done

echo "=========================================================================="
echo "✅ All benchmarks generated successfully!"
echo "=========================================================================="
echo ""
echo "Output directories:"
echo "  - dslx_output/  : DSLX function code"
echo "  - ir_output/    : XLS IR code"
echo ""
