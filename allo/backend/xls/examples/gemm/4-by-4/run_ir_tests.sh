#!/bin/bash
# Test 4x4 GEMM benchmarks using XLS IR in docker container

set -e  # Exit on error

# Docker container name
CONTAINER="xls-ece6775-fa25"

# XLS tools in container
IR_CONVERTER="/home/xls-developer/xls/bazel-bin/xls/dslx/ir_convert/ir_converter_main"
EVAL_IR="/home/xls-developer/xls/bazel-bin/xls/tools/eval_ir_main"

# Working directory in container
WORK_DIR="/tmp/nvs26/gemm_4x4_tests"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Local directories
BENCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IR_DIR="$BENCH_DIR/ir_output"
DSLX_DIR="$BENCH_DIR/dslx_output"

# Counter for results
total=0
passed=0
failed=0

echo "=========================================="
echo "Testing 4x4 GEMM Benchmarks (IR Pipeline)"
echo "=========================================="
echo ""

# Create working directory in container
docker exec "$CONTAINER" bash -c "mkdir -p $WORK_DIR"

# Test each benchmark
for bench_file in "$DSLX_DIR"/bench_*.x; do
    if [ ! -f "$bench_file" ]; then
        continue
    fi

    bench_name=$(basename "$bench_file" .x)
    total=$((total + 1))

    echo -n "Testing $bench_name ... "

    # Choose appropriate test file
    if [[ "$bench_name" == "bench_compose" ]]; then
        test_dslx="$BENCH_DIR/test_gemm_3arg.x"
    else
        test_dslx="$BENCH_DIR/test_gemm.x"
    fi

    # Combine benchmark DSLX and test DSLX (like run_tests.sh does)
    combined_dslx="/tmp/${bench_name}_with_tests.x"
    cat "$bench_file" "$test_dslx" > "$combined_dslx"

    # Copy combined DSLX to container using tee
    cat "$combined_dslx" | docker exec -i "$CONTAINER" tee "$WORK_DIR/combined.x" > /dev/null

    # Convert combined DSLX to IR in container
    if ! docker exec "$CONTAINER" bash -c "$IR_CONVERTER $WORK_DIR/combined.x > $WORK_DIR/combined.ir 2>/dev/null"; then
        echo -e "${RED}FAILED${NC} (IR conversion failed)"
        failed=$((failed + 1))
        # Show error
        docker exec "$CONTAINER" bash -c "$IR_CONVERTER $WORK_DIR/combined.x 2>&1 | head -20"
        rm -f "$combined_dslx"
        continue
    fi

    rm -f "$combined_dslx"

    # Run DSLX interpreter on the combined DSLX (this runs the #[test] functions)
    if docker exec "$CONTAINER" bash -c "/home/xls-developer/xls/bazel-bin/xls/dslx/interpreter_main $WORK_DIR/combined.x > /dev/null 2>&1"; then
        echo -e "${GREEN}PASSED${NC} (DSLX + IR conversion)"
        passed=$((passed + 1))
    else
        echo -e "${RED}FAILED${NC}"
        failed=$((failed + 1))

        # Show error output for debugging
        echo "  Error output:"
        docker exec "$CONTAINER" bash -c "/home/xls-developer/xls/bazel-bin/xls/dslx/interpreter_main $WORK_DIR/combined.x 2>&1 | head -20 | sed 's/^/    /'"
    fi
done

# Cleanup
docker exec "$CONTAINER" bash -c "rm -rf $WORK_DIR"

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
