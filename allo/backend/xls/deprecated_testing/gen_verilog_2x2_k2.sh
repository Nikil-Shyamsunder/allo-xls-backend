#!/bin/bash
set -e

XLS_DIR="/scratch/users/zrs29/xls/xls"
DSLX_FILE="/home/nvs26/allo-xls-backend/allo/backend/xls/tests/generated/xls_concrete_2x2_k2.x"
TOP="__xls_concrete_2x2_k2__SystolicArray_0_next"

echo "DSLX -> IR"
$XLS_DIR/ir_converter_main --warnings_as_errors=false "$DSLX_FILE" > /tmp/xls_concrete_2x2_k2.ir

echo "Optimize IR"
$XLS_DIR/opt_main --top="$TOP" /tmp/xls_concrete_2x2_k2.ir > /tmp/xls_concrete_2x2_k2_opt.ir

echo "Generate Verilog"
$XLS_DIR/codegen_main --generator=pipeline --delay_model=unit --pipeline_stages=2 --reset=rst --top="$TOP" /tmp/xls_concrete_2x2_k2_opt.ir > /tmp/xls_concrete_2x2_k2.v

echo "Done. Verilog output in /tmp/xls_concrete_2x2_k2.v"
wc -l /tmp/xls_concrete_2x2_k2.v

# Copy to generated directory
cp /tmp/xls_concrete_2x2_k2.ir /home/nvs26/allo-xls-backend/allo/backend/xls/tests/generated/
cp /tmp/xls_concrete_2x2_k2_opt.ir /home/nvs26/allo-xls-backend/allo/backend/xls/tests/generated/
cp /tmp/xls_concrete_2x2_k2.v /home/nvs26/allo-xls-backend/allo/backend/xls/tests/generated/

echo "Files copied to generated/"
