#!/bin/bash

# Script to test all GEMM SystemVerilog variants and collect pipeline latency

CSV_FILE="gemm_results.csv"
GEMM_DIR="$HOME/allo-xls-backend/allo/backend/xls/tests/verilator/gemm"

# Create CSV header
echo "design,pipeline_latency_cycles" > $CSV_FILE

# List of GEMM designs to test
DESIGNS=(
    "gemm_chat_2_0:gemm_chat_2_0"
    "gemm_chat_2_1:gemm_chat_2_1"
    "gemm_chat_3_0:gemm_chat_3_0"
    "gemm_chat_3_1:gemm_chat_3_1"
    "gemm_claude_4:gemm_claude_4"
)

for design_pair in "${DESIGNS[@]}"; do
    # Split into filename and module name
    IFS=':' read -r sv_file module_name <<< "$design_pair"
    
    SV_PATH="$GEMM_DIR/${sv_file}.sv"
    LOCAL_SV="/scratch/cys36/xls/verilator/${sv_file}.sv"
    
    # Check both bazel-bin and local directory
    if [ -f "$LOCAL_SV" ]; then
        SV_TO_USE="$LOCAL_SV"
    elif [ -f "$SV_PATH" ]; then
        SV_TO_USE="$SV_PATH"
    else
        echo "Warning: $sv_file.sv not found, skipping..."
        echo "$sv_file,-1" >> $CSV_FILE
        continue
    fi
    
    echo "Testing $sv_file..."
    
    # Detect port names from the SystemVerilog file
    INPUT_PORT1=$(grep -o "input wire \[127:0\] [a-zA-Z_][a-zA-Z0-9_]*" "$SV_TO_USE" | head -1 | awk '{print $4}' | tr -d ',')
    INPUT_PORT2=$(grep -o "input wire \[127:0\] [a-zA-Z_][a-zA-Z0-9_]*" "$SV_TO_USE" | tail -1 | awk '{print $4}' | tr -d ',')
    
    if [ -z "$INPUT_PORT1" ] || [ -z "$INPUT_PORT2" ]; then
        echo "  -> Could not detect port names"
        echo "$sv_file,-1" >> $CSV_FILE
        continue
    fi
    
    echo "  -> Ports: $INPUT_PORT1, $INPUT_PORT2"
    
    # Create testbench for this specific module with correct port names
    sed "s/MODULE_HEADER/V${module_name}.h/g; s/MODULE_CLASS/V${module_name}/g; s/dut->A/dut->$INPUT_PORT1/g; s/dut->B/dut->$INPUT_PORT2/g" \
        gemm_tb_template.cpp > gemm_tb_temp.cpp
    
    # Run Verilator
    verilator --cc --exe --build --timing -j 0 "$SV_TO_USE" gemm_tb_temp.cpp --top-module $module_name > /dev/null 2>&1
    
    if [ $? -eq 0 ]; then
        # Run the simulation and capture output
        # Verilator creates obj_dir/V<module_name> executable
        EXEC_NAME="./obj_dir/V${module_name}"
        if [ -f "$EXEC_NAME" ]; then
            LATENCY=$($EXEC_NAME 2>/dev/null)
            echo "$sv_file,$LATENCY" >> $CSV_FILE
            echo "  -> Latency: $LATENCY cycles"
        else
            echo "  -> Executable not found: $EXEC_NAME"
            echo "$sv_file,-1" >> $CSV_FILE
        fi
    else
        echo "  -> Build failed"
        echo "$sv_file,-1" >> $CSV_FILE
    fi
    
    # Cleanup
    rm -rf obj_dir
    rm -f gemm_tb_temp.cpp
done

echo ""
echo "Results saved to $CSV_FILE"
cat $CSV_FILE
