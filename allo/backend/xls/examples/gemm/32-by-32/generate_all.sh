#!/bin/bash
# Generate DSLX for all 32x32 GEMM benchmarks

set -e  # Exit on error

# Activate conda environment
source /home/nvs26/miniconda3/bin/activate allo

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MLIR_TO_DSLX="$SCRIPT_DIR/../../../scripts/mlir_to_dslx_fn.py"

# Create output directory
mkdir -p "$SCRIPT_DIR/dslx_output"

echo "=========================================================================="
echo "Generating 32x32 GEMM Benchmarks (DSLX)"
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

    # Clean up temp file
    rm -f /tmp/temp_${bench_name}.mlir

    echo "  ✓ Completed: $bench_name"
    echo ""
done

echo "=========================================================================="
echo "✅ All benchmarks generated successfully!"
echo "=========================================================================="
echo ""
echo "Output directory:"
echo "  - dslx_output/  : DSLX function code"
echo ""
