#!/bin/bash
# Test LLM-generated GEMM benchmarks with the XLS DSLX interpreter
# Tests only files ending in _9.x

set -e  # Exit on error

# XLS interpreter path
INTERPRETER="/scratch/users/zrs29/xls/xls/interpreter_main"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Directory containing benchmarks
BENCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Test files
TEST_2ARG="$BENCH_DIR/test_gemm.x"
TEST_3ARG="$BENCH_DIR/test_gemm_3arg.x"

# Counter for results
total=0
passed=0
failed=0

echo "=========================================="
echo "Testing LLM-Generated GEMM Benchmarks (_9)"
echo "=========================================="
echo ""

# Find all *_9.x files
for bench_file in "$BENCH_DIR"/*_9.x; do
    if [ ! -f "$bench_file" ]; then
        continue
    fi

    bench_name=$(basename "$bench_file" .x)
    total=$((total + 1))

    echo -n "Testing $bench_name ... "

    # All LLM-generated benchmarks use 2-arg version
    test_file="$TEST_2ARG"

    # Create combined file
    combined_file="/tmp/${bench_name}_with_tests.x"
    cat "$bench_file" "$test_file" > "$combined_file"

    # Run interpreter
    if "$INTERPRETER" "$combined_file" > /dev/null 2>&1; then
        echo -e "${GREEN}PASSED${NC}"
        passed=$((passed + 1))
    else
        echo -e "${RED}FAILED${NC}"
        failed=$((failed + 1))

        # Show error output for debugging
        echo "  Error output:"
        "$INTERPRETER" "$combined_file" 2>&1 | sed 's/^/    /'
    fi

    # Clean up
    rm -f "$combined_file"
done

echo ""
echo "=========================================="
echo "Results: $passed/$total passed"
if [ $failed -gt 0 ]; then
    echo -e "${RED}$failed tests failed${NC}"
    exit 1
else
    echo -e "${GREEN}All tests passed!${NC}"
    exit 0
fi
