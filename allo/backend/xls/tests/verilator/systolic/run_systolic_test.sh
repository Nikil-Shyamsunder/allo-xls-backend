#!/bin/bash

# Script to verilate and run systolic array testbench

echo "=== Building Systolic Array Testbench ==="

# Clean previous build
rm -rf obj_dir/

# Run Verilator to compile SystemVerilog and C++ testbench
verilator --cc systolic.sv --exe systolic_tb.cpp --build -j 0

if [ $? -ne 0 ]; then
    echo "ERROR: Verilator build failed"
    exit 1
fi

echo ""
echo "=== Running Systolic Array Simulation ==="
echo ""

# Run the compiled testbench
./obj_dir/Vsystolic

exit_code=$?

if [ $exit_code -eq 0 ]; then
    echo ""
    echo "Test PASSED"
else
    echo ""
    echo "Test FAILED"
fi

exit $exit_code
