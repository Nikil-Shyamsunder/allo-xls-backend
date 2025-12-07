"""Test systolic arrays of varying sizes and types."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

from allo.backend.xls.builders import SystolicArrayBuilder
from allo.backend.xls.dslx_ast import DslxProcSerializer
import subprocess


def run_test(rows, cols, k, elem_type):
    """Generate and validate DSLX for a systolic array configuration."""
    test_name = f"{rows}x{cols}_k{k}_{elem_type}"
    
    # Generate DSLX
    builder = SystolicArrayBuilder(rows, cols, k, elem_type)
    module = builder.build_complete_module()
    dslx_code = DslxProcSerializer().serialize(module)
    
    # Save to file
    filename = f"test_{test_name}.x"
    with open(filename, 'w') as f:
        f.write(dslx_code)
    
    # Run XLS interpreter
    result = subprocess.run(
        ["/scratch/users/zrs29/xls/xls/interpreter_main",
         "--dslx_stdlib_path=/scratch/users/zrs29/xls/xls/xls/dslx/stdlib",
         filename],
        capture_output=True,
        text=True,
        timeout=10
    )
    
    status = "PASS" if result.returncode == 0 else "FAIL"
    print(f"{status:6} {test_name:20} ({len(dslx_code.splitlines())} lines)")
    
    return result.returncode == 0


def main():
    print("Testing systolic array variants...")
    print()
    
    configs = [
        (2, 2, 4, "F32"),
        (2, 2, 4, "u32"),
        (2, 4, 4, "F32"),
        (2, 4, 4, "u32"),
        (4, 2, 4, "F32"),
        (4, 2, 4, "u32"),
        (3, 3, 8, "F32"),
        (3, 3, 8, "u32"),
    ]
    
    results = [run_test(*cfg) for cfg in configs]
    
    print()
    print(f"Results: {sum(results)}/{len(results)} passed")
    
    return 0 if all(results) else 1


if __name__ == "__main__":
    exit(main())
