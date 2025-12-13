#!/usr/bin/env python3
"""
Comprehensive DSLX generation using the FULL Allo IR pipeline.

Pipeline stages:
1. Allo Python code → MLIR (via allo.customize)
2. MLIR → DSLX (via MlirToDslxProcLowerer)
3. DSLX → IR (via XLS ir_converter_main)

This tests the complete end-to-end flow.
"""

import sys
import os
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32, int32, uint32
from allo.library.systolic import systolic
from allo.backend.xls.lowering import MlirToDslxProcLowererAST
import subprocess


# Configuration matrix
CONFIGS = [
    # (rows, cols, k, type_name, allo_type)
    (2, 2, 4, "float32", float32),
    (2, 2, 4, "int32", int32),
    (2, 2, 4, "uint32", uint32),

    (2, 4, 4, "float32", float32),
    (2, 4, 4, "uint32", uint32),

    (4, 2, 4, "float32", float32),
    (4, 2, 4, "uint32", uint32),

    (3, 3, 8, "float32", float32),
    (3, 3, 8, "uint32", uint32),

    (4, 4, 4, "float32", float32),
    (4, 4, 4, "uint32", uint32),
]


def create_allo_function(rows, cols, k, type_name, allo_type):
    """
    STAGE 1: Create Allo function definition.

    This is where the Allo IR is created!
    """
    # Create the function dynamically
    func_code = f"""
def systolic_{rows}x{cols}_k{k}_{type_name}(
    A: "{type_name}[{rows}, {k}]",
    B: "{type_name}[{k}, {cols}]"
) -> "{type_name}[{rows}, {cols}]":
    C: {type_name}[{rows}, {cols}] = 0
    systolic[{type_name}, {type_name}, {type_name}, {rows}, {k}, {cols}, {rows}, {k}](A, B, C)
    return C
"""

    # Execute to create the function
    exec_globals = {
        'systolic': systolic,
        type_name: allo_type
    }
    exec(func_code, exec_globals)

    func_name = f"systolic_{rows}x{cols}_k{k}_{type_name}"
    return exec_globals[func_name], func_code


def generate_variant(rows, cols, k, type_name, allo_type, output_dir="generated"):
    """
    Full pipeline for one configuration.

    Returns: (success, dslx_lines, ir_lines, error_msg)
    """
    variant_name = f"{rows}x{cols}_k{k}_{type_name}"
    dslx_path = os.path.join(output_dir, f"{variant_name}.x")
    ir_path = os.path.join(output_dir, f"{variant_name}.ir")
    mlir_path = os.path.join(output_dir, f"{variant_name}.mlir")

    try:
        print(f"\n{'='*70}")
        print(f"Generating: {variant_name}")
        print(f"{'='*70}")

        # ================================================================
        # STAGE 1: Allo Python → MLIR
        # ================================================================
        print(f"[1/3] Creating Allo IR from Python definition...")

        allo_func, func_code = create_allo_function(rows, cols, k, type_name, allo_type)

        # THIS IS WHERE ALLO IR IS CREATED!
        s = allo.customize(allo_func)
        mlir_module = s.module

        # Save MLIR for inspection
        with open(mlir_path, 'w') as f:
            f.write(str(mlir_module))

        mlir_lines = len(str(mlir_module).splitlines())
        print(f"      ✓ Generated {mlir_lines} lines of MLIR")
        print(f"      ✓ Saved to: {mlir_path}")

        # ================================================================
        # STAGE 2: MLIR → DSLX
        # ================================================================
        print(f"[2/3] Lowering MLIR → DSLX...")

        # THIS IS WHERE OUR FIXED LOWERER IS USED!
        lowerer = MlirToDslxProcLowererAST(mlir_module)
        dslx_code = lowerer.lower()

        # Save DSLX
        with open(dslx_path, 'w') as f:
            f.write(dslx_code)

        dslx_lines = len(dslx_code.splitlines())
        print(f"      ✓ Generated {dslx_lines} lines of DSLX")
        print(f"      ✓ Saved to: {dslx_path}")

        # ================================================================
        # STAGE 3: DSLX → IR (XLS)
        # ================================================================
        print(f"[3/3] Converting DSLX → XLS IR...")

        result = subprocess.run(
            ["/scratch/users/zrs29/xls/xls/ir_converter_main", dslx_path],
            capture_output=True,
            text=True,
            timeout=30
        )

        if result.returncode == 0:
            # Save IR
            with open(ir_path, 'w') as f:
                f.write(result.stdout)

            ir_lines = len(result.stdout.splitlines())
            print(f"      ✓ Generated {ir_lines} lines of XLS IR")
            print(f"      ✓ Saved to: {ir_path}")
            print(f"\n✅ SUCCESS: {variant_name}")
            return True, dslx_lines, ir_lines, None
        else:
            error_msg = result.stderr
            print(f"      ✗ IR conversion failed")
            print(f"      Error: {error_msg[:200]}...")
            print(f"\n❌ FAILED: {variant_name}")
            return False, dslx_lines, 0, error_msg

    except Exception as e:
        import traceback
        error_msg = f"{str(e)}\n{traceback.format_exc()}"
        print(f"      ✗ Exception: {str(e)}")
        print(f"\n❌ FAILED: {variant_name}")
        return False, 0, 0, error_msg


def main():
    """Generate all variants using the full Allo IR pipeline."""

    # Create output directory
    output_dir = "generated"
    os.makedirs(output_dir, exist_ok=True)

    print(f"""
{'='*70}
COMPREHENSIVE DSLX GENERATION - FULL ALLO IR PIPELINE
{'='*70}

Pipeline stages for each configuration:
  1. Allo Python → MLIR (allo.customize)
  2. MLIR → DSLX (MlirToDslxProcLowererAST)  ← Uses our fixed builders!
  3. DSLX → XLS IR (ir_converter_main)

Output directory: {output_dir}/
Total configurations: {len(CONFIGS)}

""")

    results = []

    for rows, cols, k, type_name, allo_type in CONFIGS:
        success, dslx_lines, ir_lines, error = generate_variant(
            rows, cols, k, type_name, allo_type, output_dir
        )
        results.append({
            'name': f"{rows}x{cols}_k{k}_{type_name}",
            'success': success,
            'dslx_lines': dslx_lines,
            'ir_lines': ir_lines,
            'error': error
        })

    # Summary
    print(f"\n\n{'='*70}")
    print("SUMMARY")
    print(f"{'='*70}\n")

    print(f"{'Configuration':<25} {'Status':<10} {'DSLX':<8} {'IR':<8}")
    print(f"{'-'*25} {'-'*10} {'-'*8} {'-'*8}")

    for r in results:
        status = "✅ PASS" if r['success'] else "❌ FAIL"
        dslx = f"{r['dslx_lines']} L" if r['dslx_lines'] > 0 else "-"
        ir = f"{r['ir_lines']} L" if r['ir_lines'] > 0 else "-"
        print(f"{r['name']:<25} {status:<10} {dslx:<8} {ir:<8}")

    passed = sum(1 for r in results if r['success'])
    total = len(results)

    print(f"\n{'='*70}")
    print(f"Results: {passed}/{total} passed")
    print(f"{'='*70}\n")

    if passed == total:
        print("🎉 All configurations passed!")
        return 0
    else:
        print(f"⚠️  {total - passed} configuration(s) failed")
        return 1


if __name__ == "__main__":
    exit(main())
