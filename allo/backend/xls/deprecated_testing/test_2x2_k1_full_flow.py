#!/usr/bin/env python3
"""
Test full Allo → Verilog flow for 2x2 K=1 systolic array.
Pipeline: Allo Python → MLIR → DSLX → XLS IR → Optimized IR → Verilog
"""

import sys
import os
import subprocess
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import uint32
from allo.library.systolic import systolic
from allo.backend.xls.lowering import MlirToDslxProcLowererAST


def systolic_2x2_k1_uint32(A: "uint32[2, 1]", B: "uint32[1, 2]") -> "uint32[2, 2]":
    """2x2 systolic array with K=1"""
    C: uint32[2, 2] = 0
    systolic[uint32, uint32, uint32, 2, 1, 2, 2, 1](A, B, C)
    return C


def main():
    XLS_DIR = "/scratch/users/zrs29/xls/xls"
    OUTPUT_DIR = "/home/nvs26/allo-xls-backend/allo/backend/xls/tests/generated"
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    name = "systolic_2x2_k1"
    mlir_path = os.path.join(OUTPUT_DIR, f"{name}.mlir")
    dslx_path = os.path.join(OUTPUT_DIR, f"{name}.x")
    ir_path = os.path.join(OUTPUT_DIR, f"{name}.ir")
    opt_ir_path = os.path.join(OUTPUT_DIR, f"{name}_opt.ir")
    verilog_path = os.path.join(OUTPUT_DIR, f"{name}.v")

    print("="*70)
    print("FULL ALLO → VERILOG PIPELINE TEST: 2x2 K=1")
    print("="*70)
    print()

    # STAGE 1: Allo → MLIR
    print("[1/5] Allo Python → MLIR...")
    s = allo.customize(systolic_2x2_k1_uint32)
    mlir_module = s.module

    with open(mlir_path, 'w') as f:
        f.write(str(mlir_module))

    mlir_lines = len(str(mlir_module).splitlines())
    print(f"      ✓ {mlir_lines} lines → {mlir_path}")
    print()

    # STAGE 2: MLIR → DSLX (using our fixed builders)
    print("[2/5] MLIR → DSLX (using fixed systolic builder)...")
    lowerer = MlirToDslxProcLowererAST(mlir_module)
    dslx_code = lowerer.lower()

    with open(dslx_path, 'w') as f:
        f.write(dslx_code)

    dslx_lines = len(dslx_code.splitlines())
    print(f"      ✓ {dslx_lines} lines → {dslx_path}")
    print()

    # STAGE 3: DSLX → XLS IR
    print("[3/5] DSLX → XLS IR...")
    result = subprocess.run(
        [f"{XLS_DIR}/ir_converter_main",
         "--warnings_as_errors=false",
         dslx_path],
        capture_output=True,
        text=True,
        timeout=30
    )

    if result.returncode != 0:
        print(f"      ✗ IR conversion failed")
        print(f"      Error: {result.stderr}")
        return 1

    with open(ir_path, 'w') as f:
        f.write(result.stdout)

    ir_lines = len(result.stdout.splitlines())
    print(f"      ✓ {ir_lines} lines → {ir_path}")
    print()

    # STAGE 4: Optimize IR
    print("[4/5] Optimize XLS IR...")

    # Need to extract the top proc name from IR
    with open(ir_path) as f:
        ir_content = f.read()

    # Find the proc name (line starting with "proc ")
    top_name = None
    for line in ir_content.splitlines():
        if line.strip().startswith("proc "):
            # Extract proc name: "proc __name__(...)" -> "__name__"
            top_name = line.split("proc ")[1].split("(")[0].strip()
            break

    if not top_name:
        print("      ✗ Could not find top proc name in IR")
        return 1

    print(f"      Top proc: {top_name}")

    result = subprocess.run(
        [f"{XLS_DIR}/opt_main",
         f"--top={top_name}",
         ir_path],
        capture_output=True,
        text=True,
        timeout=30
    )

    if result.returncode != 0:
        print(f"      ✗ Optimization failed")
        print(f"      Error: {result.stderr}")
        return 1

    with open(opt_ir_path, 'w') as f:
        f.write(result.stdout)

    opt_ir_lines = len(result.stdout.splitlines())
    print(f"      ✓ {opt_ir_lines} lines → {opt_ir_path}")
    print()

    # STAGE 5: Generate Verilog
    print("[5/5] Generate Verilog...")
    # Try different pipeline stages, starting with recommended value
    for stages in [5, 1, 2]:
        if stages > 1:
            print(f"      Trying {stages} pipeline stages...")

        result = subprocess.run(
            [f"{XLS_DIR}/codegen_main",
             "--generator=pipeline",
             "--delay_model=unit",
             f"--pipeline_stages={stages}",
             "--reset=rst",
             f"--top={top_name}",
             opt_ir_path],
            capture_output=True,
            text=True,
            timeout=30
        )

        if result.returncode == 0:
            break

    if result.returncode != 0:
        print(f"      ✗ Verilog generation failed")
        print(f"      Error: {result.stderr}")
        return 1

    with open(verilog_path, 'w') as f:
        f.write(result.stdout)

    verilog_lines = len(result.stdout.splitlines())
    print(f"      ✓ {verilog_lines} lines → {verilog_path}")
    print()

    print("="*70)
    print("✅ SUCCESS: Full pipeline completed!")
    print("="*70)
    print()
    print("Generated files:")
    print(f"  MLIR:     {mlir_path} ({mlir_lines} lines)")
    print(f"  DSLX:     {dslx_path} ({dslx_lines} lines)")
    print(f"  IR:       {ir_path} ({ir_lines} lines)")
    print(f"  Opt IR:   {opt_ir_path} ({opt_ir_lines} lines)")
    print(f"  Verilog:  {verilog_path} ({verilog_lines} lines)")
    print()

    return 0


if __name__ == "__main__":
    exit(main())
