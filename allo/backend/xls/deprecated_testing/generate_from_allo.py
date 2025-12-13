#!/usr/bin/env python3
"""
Brute-force DSLX generation from Allo IR.
Each configuration is defined as a static function.
"""

import sys
import os
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32, int32, uint32
from allo.library.systolic import systolic
from allo.backend.xls.lowering import MlirToDslxProcLowererAST
import subprocess


# =============================================================================
# DEFINE ALL SYSTOLIC ARRAY FUNCTIONS
# =============================================================================

# 2x2 variants
def systolic_2x2_k1_uint32(A: "uint32[2, 1]", B: "uint32[1, 2]") -> "uint32[2, 2]":
    C: uint32[2, 2] = 0
    systolic[uint32, uint32, uint32, 2, 1, 2, 2, 1](A, B, C)
    return C

def systolic_2x2_k4_float32(A: "float32[2, 4]", B: "float32[4, 2]") -> "float32[2, 2]":
    C: float32[2, 2] = 0
    systolic[float32, float32, float32, 2, 4, 2, 2, 4](A, B, C)
    return C

def systolic_2x2_k4_uint32(A: "uint32[2, 4]", B: "uint32[4, 2]") -> "uint32[2, 2]":
    C: uint32[2, 2] = 0
    systolic[uint32, uint32, uint32, 2, 4, 2, 2, 4](A, B, C)
    return C

def systolic_2x2_k4_int32(A: "int32[2, 4]", B: "int32[4, 2]") -> "int32[2, 2]":
    C: int32[2, 2] = 0
    systolic[int32, int32, int32, 2, 4, 2, 2, 4](A, B, C)
    return C


# 2x4 variants
def systolic_2x4_k4_float32(A: "float32[2, 4]", B: "float32[4, 4]") -> "float32[2, 4]":
    C: float32[2, 4] = 0
    systolic[float32, float32, float32, 2, 4, 4, 2, 4](A, B, C)
    return C

def systolic_2x4_k4_uint32(A: "uint32[2, 4]", B: "uint32[4, 4]") -> "uint32[2, 4]":
    C: uint32[2, 4] = 0
    systolic[uint32, uint32, uint32, 2, 4, 4, 2, 4](A, B, C)
    return C


# 4x2 variants
def systolic_4x2_k4_float32(A: "float32[4, 4]", B: "float32[4, 2]") -> "float32[4, 2]":
    C: float32[4, 2] = 0
    systolic[float32, float32, float32, 4, 4, 2, 4, 4](A, B, C)
    return C

def systolic_4x2_k4_uint32(A: "uint32[4, 4]", B: "uint32[4, 2]") -> "uint32[4, 2]":
    C: uint32[4, 2] = 0
    systolic[uint32, uint32, uint32, 4, 4, 2, 4, 4](A, B, C)
    return C


# 3x3 variants
def systolic_3x3_k8_float32(A: "float32[3, 8]", B: "float32[8, 3]") -> "float32[3, 3]":
    C: float32[3, 3] = 0
    systolic[float32, float32, float32, 3, 8, 3, 3, 8](A, B, C)
    return C

def systolic_3x3_k8_uint32(A: "uint32[3, 8]", B: "uint32[8, 3]") -> "uint32[3, 3]":
    C: uint32[3, 3] = 0
    systolic[uint32, uint32, uint32, 3, 8, 3, 3, 8](A, B, C)
    return C


# 4x4 variants
def systolic_4x4_k4_float32(A: "float32[4, 4]", B: "float32[4, 4]") -> "float32[4, 4]":
    C: float32[4, 4] = 0
    systolic[float32, float32, float32, 4, 4, 4, 4, 4](A, B, C)
    return C

def systolic_4x4_k4_uint32(A: "uint32[4, 4]", B: "uint32[4, 4]") -> "uint32[4, 4]":
    C: uint32[4, 4] = 0
    systolic[uint32, uint32, uint32, 4, 4, 4, 4, 4](A, B, C)
    return C


# =============================================================================
# GENERATION CONFIGURATION
# =============================================================================

VARIANTS = [
    ("2x2_k4_float32", systolic_2x2_k4_float32),
    ("2x2_k4_uint32", systolic_2x2_k4_uint32),
    ("2x2_k4_int32", systolic_2x2_k4_int32),
    ("2x4_k4_float32", systolic_2x4_k4_float32),
    ("2x4_k4_uint32", systolic_2x4_k4_uint32),
    ("4x2_k4_float32", systolic_4x2_k4_float32),
    ("4x2_k4_uint32", systolic_4x2_k4_uint32),
    ("3x3_k8_float32", systolic_3x3_k8_float32),
    ("3x3_k8_uint32", systolic_3x3_k8_uint32),
    ("4x4_k4_float32", systolic_4x4_k4_float32),
    ("4x4_k4_uint32", systolic_4x4_k4_uint32),
]


def generate_one(name, allo_func, output_dir="generated"):
    """Generate DSLX from one Allo function."""

    dslx_path = os.path.join(output_dir, f"{name}.x")
    ir_path = os.path.join(output_dir, f"{name}.ir")
    mlir_path = os.path.join(output_dir, f"{name}.mlir")

    print(f"\n{'='*70}")
    print(f"Generating: {name}")
    print(f"{'='*70}")

    try:
        # STAGE 1: Allo → MLIR
        print(f"[1/3] Allo Python → MLIR...")
        s = allo.customize(allo_func)
        mlir_module = s.module

        with open(mlir_path, 'w') as f:
            f.write(str(mlir_module))

        mlir_lines = len(str(mlir_module).splitlines())
        print(f"      ✓ {mlir_lines} lines MLIR → {mlir_path}")

        # STAGE 2: MLIR → DSLX
        print(f"[2/3] MLIR → DSLX (using fixed builders)...")
        lowerer = MlirToDslxProcLowererAST(mlir_module)
        dslx_code = lowerer.lower()

        with open(dslx_path, 'w') as f:
            f.write(dslx_code)

        dslx_lines = len(dslx_code.splitlines())
        print(f"      ✓ {dslx_lines} lines DSLX → {dslx_path}")

        # STAGE 3: DSLX → IR
        print(f"[3/3] DSLX → XLS IR...")
        result = subprocess.run(
            ["/scratch/users/zrs29/xls/xls/ir_converter_main",
             "--dslx_stdlib_path=/scratch/users/zrs29/xls/xls/xls/dslx/stdlib",
             dslx_path],
            capture_output=True,
            text=True,
            timeout=30
        )

        if result.returncode == 0:
            with open(ir_path, 'w') as f:
                f.write(result.stdout)

            ir_lines = len(result.stdout.splitlines())
            print(f"      ✓ {ir_lines} lines IR → {ir_path}")
            print(f"\n✅ SUCCESS: {name}")
            return True, dslx_lines, ir_lines
        else:
            print(f"      ✗ IR conversion failed")
            print(f"      Error: {result.stderr[:150]}")
            print(f"\n❌ FAILED: {name}")
            return False, dslx_lines, 0

    except Exception as e:
        print(f"      ✗ Exception: {str(e)}")
        print(f"\n❌ FAILED: {name}")
        return False, 0, 0


def main():
    """Generate all variants."""

    output_dir = "generated"
    os.makedirs(output_dir, exist_ok=True)

    print(f"""
{'='*70}
FULL ALLO IR PIPELINE - BRUTE FORCE GENERATION
{'='*70}

Pipeline: Allo Python → MLIR → DSLX → XLS IR

Each stage:
  [1/3] allo.customize()           - Creates MLIR from Allo
  [2/3] MlirToDslxProcLowererAST   - Uses our FIXED builders!
  [3/3] ir_converter_main          - Validates DSLX correctness

Output: {output_dir}/
Variants: {len(VARIANTS)}
""")

    results = []

    for name, allo_func in VARIANTS:
        success, dslx_lines, ir_lines = generate_one(name, allo_func, output_dir)
        results.append({
            'name': name,
            'success': success,
            'dslx': dslx_lines,
            'ir': ir_lines
        })

    # Summary
    print(f"\n\n{'='*70}")
    print("SUMMARY")
    print(f"{'='*70}\n")
    print(f"{'Configuration':<25} {'Status':<10} {'DSLX':<8} {'IR':<8}")
    print(f"{'-'*25} {'-'*10} {'-'*8} {'-'*8}")

    for r in results:
        status = "✅ PASS" if r['success'] else "❌ FAIL"
        dslx = f"{r['dslx']} L" if r['dslx'] > 0 else "-"
        ir = f"{r['ir']} L" if r['ir'] > 0 else "-"
        print(f"{r['name']:<25} {status:<10} {dslx:<8} {ir:<8}")

    passed = sum(1 for r in results if r['success'])
    total = len(results)

    print(f"\n{'='*70}")
    print(f"Results: {passed}/{total} passed")
    print(f"{'='*70}\n")

    if passed == total:
        print("🎉 ALL CONFIGURATIONS PASSED!")
        print(f"\nFiles generated in: {output_dir}/")
        print("  - *.mlir  (Allo IR)")
        print("  - *.x     (DSLX)")
        print("  - *.ir    (XLS IR)")
        return 0
    else:
        print(f"⚠️  {total - passed} configuration(s) failed")
        return 1


if __name__ == "__main__":
    exit(main())
