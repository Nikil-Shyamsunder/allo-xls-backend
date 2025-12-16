#!/bin/bash

# Test all systolic variants with Verilator
# Runs meta_systolic examples

SCRIPT_DIR=$(cd "$(dirname "${BASH_REMATCH[0]}")" && pwd)
EXAMPLES_DIR="$SCRIPT_DIR/../../../examples"

echo "========================================"
echo "Testing All Systolic Array Variants"
echo "========================================"
echo ""

# Find all variant directories (only test meta_systolic for now)
VARIANTS=(
    "$EXAMPLES_DIR/meta_systolic/2x2_k2_int32"
    "$EXAMPLES_DIR/meta_systolic/2x2_k2_float32"
    "$EXAMPLES_DIR/meta_systolic/3x3_k2_uint32"
    "$EXAMPLES_DIR/meta_systolic/4x4_k4_int32"
)

PASSED=0
FAILED=0
SKIPPED=0

for variant in "${VARIANTS[@]}"; do
    if [ ! -d "$variant" ]; then
        echo "⊘ Skipping $variant (directory not found)"
        ((SKIPPED++))
        continue
    fi
    
    if [ ! -f "$variant/systolic.v" ]; then
        echo "⊘ Skipping $variant (systolic.v not found)"
        ((SKIPPED++))
        continue
    fi
    
    echo "----------------------------------------"
    echo "Testing: $(basename $(dirname $variant))/$(basename $variant)"
    echo "----------------------------------------"
    
    if "$SCRIPT_DIR/run_generic_test.sh" "$variant"; then
        ((PASSED++))
    else
        ((FAILED++))
    fi
    echo ""
done

echo "========================================"
echo "Test Summary"
echo "========================================"
echo "Passed:  $PASSED"
echo "Failed:  $FAILED"
echo "Skipped: $SKIPPED"
echo ""

if [ $FAILED -eq 0 ]; then
    echo "✓ All tests passed!"
    exit 0
else
    echo "✗ Some tests failed"
    exit 1
fi
