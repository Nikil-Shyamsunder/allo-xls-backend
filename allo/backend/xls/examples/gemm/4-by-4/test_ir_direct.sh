#!/bin/bash
# Test 4x4 GEMM IR files directly using eval_ir_main with explicit test cases
# This validates the IR without needing DSLX

set -e

# Docker container name
CONTAINER="xls-ece6775-fa25"
EVAL_IR="/home/xls-developer/xls/bazel-bin/xls/tools/eval_ir_main"
WORK_DIR="/tmp/nvs26/gemm_4x4_ir_tests"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Local directories
BENCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IR_DIR="$BENCH_DIR/ir_output"

# Counters
total=0
passed=0
failed=0

echo "=========================================="
echo "Direct IR Testing (eval_ir_main)"
echo "=========================================="
echo ""

# Create working directory
docker exec "$CONTAINER" bash -c "mkdir -p $WORK_DIR"

# Helper function to create array literal
# Usage: array_lit 1 0 0 0 ... (16 values)
array_lit() {
    local result="["
    for val in "$@"; do
        if [ "$result" != "[" ]; then
            result="${result}, "
        fi
        result="${result}bits[32]:${val}"
    done
    result="${result}]"
    echo "$result"
}

# Test Case 1: Zero multiplication (A * 0 = 0)
test_zero_mult() {
    local A=$(array_lit 1 2 0 0  3 4 0 0  0 0 0 0  0 0 0 0)
    local B=$(array_lit 0 0 0 0  0 0 0 0  0 0 0 0  0 0 0 0)
    local EXPECTED=$(array_lit 0 0 0 0  0 0 0 0  0 0 0 0  0 0 0 0)
    echo "$A; $B|||$EXPECTED"
}

# Test Case 2: Identity multiplication (A * I = A)
test_identity_mult() {
    local A=$(array_lit 1 2 0 0  3 4 0 0  0 0 0 0  0 0 0 0)
    local I=$(array_lit 1 0 0 0  0 1 0 0  0 0 1 0  0 0 0 1)
    local EXPECTED="$A"
    echo "$A; $I|||$EXPECTED"
}

# Test Case 3: Simple multiplication
test_simple_mult() {
    local A=$(array_lit 1 2 0 0  3 4 0 0  0 0 0 0  0 0 0 0)
    local B=$(array_lit 1 0 0 0  3 5 0 0  0 0 0 0  0 0 0 0)
    local EXPECTED=$(array_lit 7 10 0 0  15 20 0 0  0 0 0 0  0 0 0 0)
    echo "$A; $B|||$EXPECTED"
}

# Test Case 4: Ones multiplication
test_ones_mult() {
    local A=$(array_lit 1 1 0 0  1 1 0 0  0 0 0 0  0 0 0 0)
    local EXPECTED=$(array_lit 2 2 0 0  2 2 0 0  0 0 0 0  0 0 0 0)
    echo "$A; $A|||$EXPECTED"
}

# Test Case 5: Full 4x4 identity
test_full_identity() {
    local A=$(array_lit 1 2 3 4  5 6 7 8  9 10 11 12  13 14 15 16)
    local I=$(array_lit 1 0 0 0  0 1 0 0  0 0 1 0  0 0 0 1)
    local EXPECTED="$A"
    echo "$A; $I|||$EXPECTED"
}

# Run all tests on each IR file
for ir_file in "$IR_DIR"/bench_*.ir; do
    if [ ! -f "$ir_file" ]; then
        continue
    fi

    bench_name=$(basename "$ir_file" .ir)

    # Skip bench_compose (3-argument version)
    if [[ "$bench_name" == "bench_compose" ]]; then
        echo "Skipping $bench_name (3-argument version not supported in this test)"
        continue
    fi

    total=$((total + 1))
    echo -n "Testing $bench_name ... "

    # Wrap IR in a package and copy to container
    {
        echo "package gemm_test"
        echo ""
        cat "$ir_file"
    } | docker exec -i "$CONTAINER" tee "$WORK_DIR/bench.ir" > /dev/null

    # Run all test cases
    all_passed=true
    test_num=0

    for test_case in test_zero_mult test_identity_mult test_simple_mult test_ones_mult test_full_identity; do
        test_num=$((test_num + 1))

        # Get test data (format: "input|||expected")
        test_data=$($test_case)
        input_part=$(echo "$test_data" | cut -d'|' -f1)
        expected_part=$(echo "$test_data" | cut -d'|' -f4)

        # Run eval_ir_main
        if ! docker exec "$CONTAINER" bash -c "$EVAL_IR --top=gemm --input='$input_part' --expected='$expected_part' $WORK_DIR/bench.ir > /dev/null 2>&1"; then
            all_passed=false
            echo -e "\n${RED}  Test $test_num ($test_case) FAILED${NC}"
            docker exec "$CONTAINER" bash -c "$EVAL_IR --top=gemm --input='$input_part' --expected='$expected_part' $WORK_DIR/bench.ir 2>&1 | sed 's/^/    /'"
            break
        fi
    done

    if $all_passed; then
        echo -e "${GREEN}PASSED${NC} (5/5 tests)"
        passed=$((passed + 1))
    else
        echo -e "${RED}FAILED${NC}"
        failed=$((failed + 1))
    fi
done

# Cleanup
docker exec "$CONTAINER" bash -c "rm -rf $WORK_DIR"

echo ""
echo "=========================================="
echo "Results: $passed/$total passed"
if [ $failed -gt 0 ]; then
    echo -e "${RED}$failed benchmarks failed${NC}"
    exit 1
else
    echo -e "${GREEN}All benchmarks passed!${NC}"
    exit 0
fi
