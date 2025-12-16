#!/usr/bin/env python3
"""Standalone CLI script to convert MLIR to DSLX for systolic arrays.

Usage:
    python mlir_to_dslx_cli.py input.mlir
    python mlir_to_dslx_cli.py input.mlir -o output.x
"""

import sys
import argparse
from pathlib import Path
import io

# Add parent directory to path
sys.path.insert(0, str(Path(__file__).parent.parent.parent.parent))

from allo._mlir.ir import Module, Context
from allo._mlir.dialects import allo as allo_d
from allo.backend.xls.lowering.mlir_to_dslx_proc import MlirToDslxProcLowererAST


def main():
    parser = argparse.ArgumentParser(
        description='Convert MLIR to DSLX for systolic arrays (meta-if and library patterns)'
    )
    parser.add_argument('input', help='Input MLIR file')
    parser.add_argument('-o', '--output', help='Output DSLX file (default: stdout)')
    
    args = parser.parse_args()
    
    # Read MLIR file
    with open(args.input, 'r') as f:
        mlir_text = f.read()
    
    # Parse MLIR with allo dialect registered
    with Context() as ctx:
        allo_d.register_dialect(ctx)
        module = Module.parse(mlir_text)
        
        # Lower to DSLX - redirect debug output to stderr
        old_stdout = sys.stdout
        sys.stdout = sys.stderr
        try:
            lowerer = MlirToDslxProcLowererAST(module)
            dslx_code = lowerer.lower()
        finally:
            sys.stdout = old_stdout
    
    # Output
    if args.output:
        with open(args.output, 'w') as f:
            f.write(dslx_code)
        print(f"Generated DSLX written to {args.output}", file=sys.stderr)
    else:
        print(dslx_code)


if __name__ == '__main__':
    main()
