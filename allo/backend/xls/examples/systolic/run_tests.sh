#!/bin/bash
# Run tests for all systolic array variants
# Concatenates systolic.x with test.x and runs eval_proc_main

set -e  # Exit on error

XLS_DIR="/scratch/users/zrs29/xls/xls"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=========================================================================="
echo "Running Tests for All Systolic Array Variants"
echo "=========================================================================="
echo ""

VARIANTS=(
    "2x2_k2_uint32"
    "2x2_k2_float32"
    "4x4_k4_uint32"
    "4x4_k4_float32"
)

PASSED=0
FAILED=0
FAILED_VARIANTS=()

for variant in "${VARIANTS[@]}"; do
    echo "=========================================================================="
    echo "Testing: $variant"
    echo "=========================================================================="

    VARIANT_DIR="$SCRIPT_DIR/$variant"

    if [ ! -f "$VARIANT_DIR/systolic.x" ]; then
        echo "❌ Error: systolic.x not found in $variant"
        FAILED=$((FAILED + 1))
        FAILED_VARIANTS+=("$variant (missing systolic.x)")
        continue
    fi

    if [ ! -f "$VARIANT_DIR/test.x" ]; then
        echo "❌ Error: test.x not found in $variant"
        FAILED=$((FAILED + 1))
        FAILED_VARIANTS+=("$variant (missing test.x)")
        continue
    fi

    # Create combined file
    COMBINED_FILE="/tmp/systolic_test_${variant}.x"
    cat "$VARIANT_DIR/systolic.x" "$VARIANT_DIR/test.x" > "$COMBINED_FILE"

    echo "Running interpreter_main..."

    # Determine if we need float32 stdlib
    if [[ "$variant" == *"float32"* ]]; then
        STDLIB_FLAG="--dslx_stdlib_path=$XLS_DIR/xls/dslx/stdlib"
    else
        STDLIB_FLAG=""
    fi

    # Run interpreter_main (disable warnings as errors for generated code style issues)
    if $XLS_DIR/interpreter_main --warnings_as_errors=false $STDLIB_FLAG "$COMBINED_FILE" 2>&1; then
        echo "✅ All tests passed for $variant"
        PASSED=$((PASSED + 1))
    else
        echo "❌ Tests failed for $variant"
        FAILED=$((FAILED + 1))
        FAILED_VARIANTS+=("$variant")
    fi

    # Clean up combined file
    rm -f "$COMBINED_FILE"

    echo ""
done

echo "=========================================================================="
echo "Test Summary"
echo "=========================================================================="
echo "Passed: $PASSED"
echo "Failed: $FAILED"

if [ $FAILED -gt 0 ]; then
    echo ""
    echo "Failed variants:"
    for failed_variant in "${FAILED_VARIANTS[@]}"; do
        echo "  - $failed_variant"
    done
    exit 1
else
    echo ""
    echo "🎉 All tests passed!"
    exit 0
fi
