#!/bin/bash

# Generalized Systolic Array Test Runner
# Usage: ./run_generic_test.sh <variant_path>
# Example: ./run_generic_test.sh ../../examples/meta_systolic/2x2_k2_int32

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <variant_path>"
    echo "Example: $0 ../../examples/meta_systolic/2x2_k2_int32"
    exit 1
fi

VARIANT_PATH="$1"
VARIANT_NAME=$(basename "$VARIANT_PATH")

# Parse variant name to extract parameters
# Expected format: MxN_kK_TYPE
# Examples: 2x2_k2_int32, 3x3_k2_uint32, 4x4_k4_int32

if [[ $VARIANT_NAME =~ ^([0-9]+)x([0-9]+)_k([0-9]+)_([a-z0-9]+)$ ]]; then
    ROWS="${BASH_REMATCH[1]}"
    COLS="${BASH_REMATCH[2]}"
    K_BOUND="${BASH_REMATCH[3]}"
    TYPE="${BASH_REMATCH[4]}"
else
    echo "Error: Cannot parse variant name '$VARIANT_NAME'"
    echo "Expected format: MxNxkK_TYPE (e.g., 2x2_k2_int32)"
    exit 1
fi

# Map type string to C type
case $TYPE in
    int32)
        CTYPE="int32_t"
        ;;
    uint32)
        CTYPE="uint32_t"
        ;;
    float32)
        CTYPE="float"
        CFLAGS_EXTRA="-DIS_FLOAT"
        ;;
    *)
        echo "Error: Unsupported type '$TYPE'"
        exit 1
        ;;
esac

echo "Testing variant: $VARIANT_NAME"
echo "  Rows: $ROWS"
echo "  Cols: $COLS"
echo "  K: $K_BOUND"
echo "  Type: $CTYPE"

# Check if systolic.v exists
if [ ! -f "$VARIANT_PATH/systolic.v" ]; then
    echo "Error: systolic.v not found in $VARIANT_PATH"
    echo "Please generate Verilog first using mlir_to_verilog_proc.py"
    exit 1
fi

# Create build directory
BUILD_DIR="build_${VARIANT_NAME}"
mkdir -p "$BUILD_DIR"

# Copy Verilog to build directory
cp "$VARIANT_PATH/systolic.v" "$BUILD_DIR/"

# Copy XLS FIFO wrapper
XLS_FIFO="/scratch/cys36/xls/xls/modules/zstd/rtl/xls_fifo_wrapper.sv"
if [ -f "$XLS_FIFO" ]; then
    cp "$XLS_FIFO" "$BUILD_DIR/"
fi

# Run verilator
echo "Running Verilator..."
verilator --cc --exe \
    -CFLAGS "-DROWS=$ROWS -DCOLS=$COLS -DK_BOUND=$K_BOUND -DELEM_TYPE=$CTYPE ${CFLAGS_EXTRA:-}" \
    --trace \
    --build \
    -j 0 \
    --Wno-fatal \
    --Mdir "$BUILD_DIR/obj_dir" \
    "$BUILD_DIR/systolic.v" \
    "$BUILD_DIR/xls_fifo_wrapper.sv" \
    systolic_tb_generic.cpp

# Run the test
echo ""
echo "Running test..."
"./$BUILD_DIR/obj_dir/Vsystolic"

# Check exit code
if [ $? -eq 0 ]; then
    echo ""
    echo "✓ $VARIANT_NAME test passed"
else
    echo ""
    echo "✗ $VARIANT_NAME test failed"
    exit 1
fi
