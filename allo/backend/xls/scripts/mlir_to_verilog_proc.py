#!/usr/bin/env python3
"""
MLIR to Verilog Conversion Script for Systolic Arrays

This script takes raw MLIR text as input and produces Verilog output
through the following pipeline:
  MLIR → DSLX → XLS IR → Optimized IR → Verilog

Usage:
  # From a file:
  ./mlir_to_verilog_proc.py input.mlir -o output_dir

  # From stdin:
  cat input.mlir | ./mlir_to_verilog_proc.py --stdin -o output_dir

  # Keep intermediate files:
  ./mlir_to_verilog_proc.py input.mlir -o output_dir --keep-intermediates
"""

import sys
import os
import subprocess
import argparse
import tempfile
from pathlib import Path

# Add allo-xls-backend to Python path
SCRIPT_DIR = Path(__file__).parent.resolve()
# Go up to allo-xls-backend root: scripts -> xls -> backend -> allo -> allo-xls-backend
BACKEND_ROOT = SCRIPT_DIR.parent.parent.parent.parent
sys.path.insert(0, str(BACKEND_ROOT))

# Import MLIR parsing and lowering
try:
    from allo._mlir.ir import Module as MlirModule
    from allo._mlir import ir as mlir_ir
    from allo.backend.xls.lowering import MlirToDslxProcLowererAST
except ImportError as e:
    print(f"Error: Failed to import allo modules: {e}", file=sys.stderr)
    print("Please ensure allo-xls-backend is properly installed.", file=sys.stderr)
    sys.exit(1)

# XLS tools directory
XLS_DIR = "/scratch/users/zrs29/xls/xls"


def parse_mlir(mlir_text):
    """Parse MLIR text into a module."""
    try:
        with mlir_ir.Context() as ctx:
            module = MlirModule.parse(mlir_text, ctx)
            return module
    except Exception as e:
        raise RuntimeError(f"Failed to parse MLIR: {e}")


def mlir_to_dslx(mlir_module):
    """Convert MLIR module to DSLX code."""
    try:
        lowerer = MlirToDslxProcLowererAST(mlir_module)
        dslx_code = lowerer.lower()

        # Check for error messages in generated code
        if dslx_code.startswith("// ERROR"):
            raise RuntimeError(f"MLIR to DSLX lowering failed:\n{dslx_code}")

        return dslx_code
    except Exception as e:
        raise RuntimeError(f"Failed to convert MLIR to DSLX: {e}")


def dslx_to_ir(dslx_path):
    """Convert DSLX to XLS IR using ir_converter_main."""
    try:
        result = subprocess.run(
            [f"{XLS_DIR}/ir_converter_main",
             "--warnings_as_errors=false",
             "--dslx_stdlib_path=/scratch/users/zrs29/xls/xls/xls/dslx/stdlib",
             str(dslx_path)],
            capture_output=True,
            text=True,
            timeout=30
        )

        if result.returncode != 0:
            raise RuntimeError(f"IR conversion failed:\n{result.stderr}")

        return result.stdout
    except subprocess.TimeoutExpired:
        raise RuntimeError("IR conversion timed out after 30 seconds")
    except Exception as e:
        raise RuntimeError(f"Failed to convert DSLX to IR: {e}")


def optimize_ir(ir_text, ir_path):
    """Optimize XLS IR using opt_main."""
    try:
        # Extract the top proc name from IR
        top_name = None
        for line in ir_text.splitlines():
            if line.strip().startswith("proc "):
                # Extract proc name: "proc __name__(...)" -> "__name__"
                top_name = line.split("proc ")[1].split("(")[0].strip()
                break

        if not top_name:
            raise RuntimeError("Could not find top proc name in IR")

        result = subprocess.run(
            [f"{XLS_DIR}/opt_main",
             f"--top={top_name}",
             str(ir_path)],
            capture_output=True,
            text=True,
            timeout=30
        )

        if result.returncode != 0:
            raise RuntimeError(f"IR optimization failed:\n{result.stderr}")

        return result.stdout, top_name
    except subprocess.TimeoutExpired:
        raise RuntimeError("IR optimization timed out after 30 seconds")
    except Exception as e:
        raise RuntimeError(f"Failed to optimize IR: {e}")


def generate_verilog(opt_ir_path, top_name, pipeline_stages=5):
    """Generate Verilog from optimized IR using codegen_main."""
    try:
        # Try different pipeline stages if needed
        for stages in [pipeline_stages, 1, 2]:
            result = subprocess.run(
                [f"{XLS_DIR}/codegen_main",
                 "--generator=pipeline",
                 "--delay_model=unit",
                 f"--pipeline_stages={stages}",
                 "--reset=rst",
                 f"--top={top_name}",
                 str(opt_ir_path)],
                capture_output=True,
                text=True,
                timeout=30
            )

            if result.returncode == 0:
                return result.stdout

        raise RuntimeError(f"Verilog generation failed:\n{result.stderr}")
    except subprocess.TimeoutExpired:
        raise RuntimeError("Verilog generation timed out after 30 seconds")
    except Exception as e:
        raise RuntimeError(f"Failed to generate Verilog: {e}")


def main():
    parser = argparse.ArgumentParser(
        description="Convert MLIR to Verilog for systolic arrays",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s input.mlir -o output/
  %(prog)s input.mlir -o output/ --keep-intermediates
  cat input.mlir | %(prog)s --stdin -o output/
  %(prog)s input.mlir -o output/ --pipeline-stages 3
        """
    )

    parser.add_argument(
        'input',
        nargs='?',
        help='Input MLIR file (omit if using --stdin)'
    )
    parser.add_argument(
        '--stdin',
        action='store_true',
        help='Read MLIR from stdin instead of file'
    )
    parser.add_argument(
        '-o', '--output-dir',
        required=True,
        help='Output directory for generated files'
    )
    parser.add_argument(
        '--keep-intermediates',
        action='store_true',
        help='Keep intermediate files (DSLX, IR, etc.)'
    )
    parser.add_argument(
        '--pipeline-stages',
        type=int,
        default=5,
        help='Number of pipeline stages for Verilog generation (default: 5)'
    )
    parser.add_argument(
        '--name',
        default='systolic',
        help='Base name for output files (default: systolic)'
    )

    args = parser.parse_args()

    # Validate input
    if args.stdin and args.input:
        parser.error("Cannot specify both input file and --stdin")
    if not args.stdin and not args.input:
        parser.error("Must specify either input file or --stdin")

    # Read MLIR input
    try:
        if args.stdin:
            mlir_text = sys.stdin.read()
        else:
            with open(args.input, 'r') as f:
                mlir_text = f.read()
    except Exception as e:
        print(f"Error reading input: {e}", file=sys.stderr)
        return 1

    # Create output directory
    output_dir = Path(args.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    # Define output paths
    name = args.name
    mlir_path = output_dir / f"{name}.mlir"
    dslx_path = output_dir / f"{name}.x"
    ir_path = output_dir / f"{name}.ir"
    opt_ir_path = output_dir / f"{name}_opt.ir"
    verilog_path = output_dir / f"{name}.v"

    print("="*70)
    print("MLIR → VERILOG PIPELINE")
    print("="*70)
    print()

    try:
        # STAGE 1: Parse MLIR
        print("[1/5] Parsing MLIR...")
        mlir_module = parse_mlir(mlir_text)

        if args.keep_intermediates:
            with open(mlir_path, 'w') as f:
                f.write(mlir_text)
            print(f"      ✓ Saved to {mlir_path}")
        else:
            print(f"      ✓ Parsed successfully")
        print()

        # STAGE 2: MLIR → DSLX
        print("[2/5] MLIR → DSLX...")
        dslx_code = mlir_to_dslx(mlir_module)

        with open(dslx_path, 'w') as f:
            f.write(dslx_code)

        dslx_lines = len(dslx_code.splitlines())
        print(f"      ✓ {dslx_lines} lines → {dslx_path}")
        print()

        # STAGE 3: DSLX → XLS IR
        print("[3/5] DSLX → XLS IR...")
        ir_text = dslx_to_ir(dslx_path)

        with open(ir_path, 'w') as f:
            f.write(ir_text)

        ir_lines = len(ir_text.splitlines())
        print(f"      ✓ {ir_lines} lines → {ir_path}")
        print()

        # STAGE 4: Optimize IR
        print("[4/5] Optimize XLS IR...")
        opt_ir_text, top_name = optimize_ir(ir_text, ir_path)

        with open(opt_ir_path, 'w') as f:
            f.write(opt_ir_text)

        opt_ir_lines = len(opt_ir_text.splitlines())
        print(f"      Top proc: {top_name}")
        print(f"      ✓ {opt_ir_lines} lines → {opt_ir_path}")
        print()

        # STAGE 5: Generate Verilog
        print("[5/5] Generate Verilog...")
        verilog_text = generate_verilog(opt_ir_path, top_name, args.pipeline_stages)

        with open(verilog_path, 'w') as f:
            f.write(verilog_text)

        verilog_lines = len(verilog_text.splitlines())
        print(f"      ✓ {verilog_lines} lines → {verilog_path}")
        print()

        # Cleanup intermediate files if requested
        if not args.keep_intermediates:
            dslx_path.unlink()
            ir_path.unlink()
            opt_ir_path.unlink()

        print("="*70)
        print("✅ SUCCESS: Verilog generation completed!")
        print("="*70)
        print()
        print("Output files:")
        print(f"  Verilog: {verilog_path} ({verilog_lines} lines)")
        if args.keep_intermediates:
            print(f"  MLIR:    {mlir_path}")
            print(f"  DSLX:    {dslx_path}")
            print(f"  IR:      {ir_path}")
            print(f"  Opt IR:  {opt_ir_path}")
        print()

        return 0

    except Exception as e:
        print(f"\n❌ Error: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
