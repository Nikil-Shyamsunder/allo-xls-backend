#!/bin/bash
# Generate all meta-if systolic array variants
# Runs each source.py to get MLIR, then uses mlir_to_dslx_proc.py to generate DSLX

set -e  # Exit on error

# Activate conda environment
eval "$(conda shell.bash hook)"
conda activate axls

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MLIR_TO_DSLX="$SCRIPT_DIR/../../lowering/mlir_to_dslx_cli.py"

echo "=========================================================================="
echo "Generating All Meta-If Systolic Array Variants"
echo "=========================================================================="
echo "Using conda environment: axls"
echo ""

VARIANTS=(
    "2x2_k2_int32"
    "2x2_k2_float32"
    "3x3_k2_uint32"
    "4x4_k4_int32"
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
    python3 source.py > systolic.mlir

    echo "Step 2: Generating DSLX from MLIR (using AST-based lowerer)..."
    if python3 "$MLIR_TO_DSLX" systolic.mlir > systolic.x; then
        echo "✅ DSLX generation successful"
    else
        echo "❌ DSLX generation failed"
        continue
    fi

    echo "✅ Completed: $variant"
    echo "   Generated files:"
    echo "     - systolic.mlir : MLIR intermediate representation"
    echo "     - systolic.x    : XLS DSLX proc code"
done

echo ""
echo "=========================================================================="
echo "All variants generated successfully!"
echo "=========================================================================="
echo ""
echo "Generated files in each variant directory:"
echo "  - source.py      : Allo Python source (meta_if pattern)"
echo "  - systolic.mlir  : MLIR intermediate representation"
echo "  - systolic.x     : XLS DSLX proc code"
echo "  - test.x         : DSLX test cases"
echo ""
echo "Next steps:"
echo "  1. Run tests: ./run_tests.sh"
echo "  2. Or test individual variant: cd <variant> && cat systolic.x test.x | ..."
echo ""
