"""Test proc-based lowering on systolic array."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32
from allo.library.systolic import systolic
from allo._mlir.dialects import func as func_d

from allo.backend.xls.lowering import MlirToDslxProcLowerer


def small_SA(A: "float32[2, 4]", B: "float32[4, 8]") -> "float32[2, 8]":
    C: float32[2, 8] = 0
    systolic[float32, float32, float32, 2, 4, 8, 2, 4](A, B, C)
    return C


def small_SA_composed(A: "float32[2, 4]", B: "float32[4, 8]") -> "float32[2, 8]":
    C: float32[2, 8] = 0
    systolic[float32, float32, float32, 2, 4, 8, 2, 4, "small"](A, B, C)
    return C


def generate_unscheduled_ir():
    """Generate unscheduled systolic IR for manual inspection."""
    print("=" * 80)
    print("Generating UNSCHEDULED systolic array IR (no compose)...")
    print("=" * 80)

    s = allo.customize(small_SA)
    module = s.module

    # Save to file
    output_path = '/home/nvs26/allo-xls-backend/allo/backend/xls/systolic_unscheduled.mlir'
    with open(output_path, 'w') as f:
        f.write(str(module))

    print(f"✓ Saved to: {output_path}")
    print(f"  Total lines: {len(str(module).splitlines())}")
    print(f"  Functions: {len(module.body.operations)}")

    return module


def generate_composed_ir():
    """Generate composed (inlined) systolic IR for comparison."""
    print("\n" + "=" * 80)
    print("Generating COMPOSED systolic array IR (with compose/inline)...")
    print("=" * 80)

    s = allo.customize(small_SA_composed)
    s.compose(systolic, instantiate=[float32, float32, float32, 2, 4, 8, 2, 4], id="small")
    module = s.module

    # Save to file
    output_path = '/home/nvs26/allo-xls-backend/allo/backend/xls/systolic_composed.mlir'
    with open(output_path, 'w') as f:
        f.write(str(module))

    print(f"✓ Saved to: {output_path}")
    print(f"  Total lines: {len(str(module).splitlines())}")
    print(f"  Functions: {len(module.body.operations)}")

    return module


def test_proc_lowering(module):
    """Test the proc lowerer on the given module."""
    print("\n" + "=" * 80)
    print("Testing DSLX Proc Lowering...")
    print("=" * 80)

    lowerer = MlirToDslxProcLowerer(module)

    # Option 1: Auto-detect (simple pattern matching)
    print("\n--- Auto-detection mode ---")
    info = lowerer.get_info()
    print(f"Auto-detected grid function: {info.get('grid_func')}")
    print(f"Auto-detected PE function: {info.get('pe_func')}")

    if info.get('grid'):
        print(f"Grid: {info['grid']['rows']}x{info['grid']['cols']}")

    if info.get('fifos'):
        print(f"\nFIFOs:")
        for name, fifo_info in info['fifos'].items():
            print(f"  {name}: {fifo_info['shape']} of {fifo_info['element_type']}")

    if info.get('connectivity'):
        print(f"\nConnectivity:")
        for arg_idx, conn in info['connectivity'].items():
            print(f"  arg{arg_idx}: {conn['fifo']} {conn['indices']} ({conn['direction']})")

    if info.get('pe_info'):
        print(f"\nPE: K={info['pe_info']['k_bound']}, type={info['pe_info']['element_type']}")

    # Generate code
    print("\n=== Generating DSLX ===")
    dslx_code = lowerer.lower()  # Auto-detect

    # Or explicitly specify:
    # dslx_code = lowerer.lower(grid_func_name="systolic_tile", pe_func_name="PE_kernel")

    # Save
    output_path = '/home/nvs26/allo-xls-backend/allo/backend/xls/systolic_output.x'
    with open(output_path, 'w') as f:
        f.write(dslx_code)

    print(f"✓ Saved to: {output_path}")
    print(f"\n{dslx_code}")


def main():
    # Generate unscheduled IR
    module_unscheduled = generate_unscheduled_ir()

    # Test the new lowering pass
    test_proc_lowering(module_unscheduled)


if __name__ == "__main__":
    main()
