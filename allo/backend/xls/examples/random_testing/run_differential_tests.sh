#!/bin/bash
# Run all differential tests

INTERPRETER="/scratch/users/zrs29/xls/xls/interpreter_main"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DIFF_DIR="$SCRIPT_DIR/differential"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

total=0
passed=0
failed=0

echo "=========================================="
echo "Running Differential Tests (LLM vs Compiler)"
echo "=========================================="
echo ""

for test_file in "$DIFF_DIR"/test_*.x; do
    if [ ! -f "$test_file" ]; then
        continue
    fi

    test_name=$(basename "$test_file" .x)
    total=$((total + 1))

    echo -n "Testing $test_name ... "

    # Run with compare=jit to enable quickcheck
    if "$INTERPRETER" --compare=jit "$test_file" > /dev/null 2>&1; then
        echo -e "${GREEN}PASSED${NC}"
        passed=$((passed + 1))
    else
        echo -e "${RED}FAILED${NC}"
        failed=$((failed + 1))

        # Show error output
        echo "  Error output:"
        "$INTERPRETER" --compare=jit "$test_file" 2>&1 | grep -A 5 "FAILED\|Error" | sed 's/^/    /'
    fi
done

echo ""
echo "=========================================="
echo "Results: $passed/$total passed"
if [ $failed -gt 0 ]; then
    echo -e "${RED}$failed tests failed${NC}"
else
    echo -e "${GREEN}All tests passed!${NC}"
fi
