"""Test PE-only lowering from MLIR to DSLX proc."""

import allo
from allo.ir.types import int32, float32
from allo.backend.xls.mlir_lowerer import MlirToDslxLowerer
from allo.backend.xls.systolic.extractors import PEAnalyzer
from allo.library.systolic import systolic_tile

def test_pe_functional_lowering():
    """Test lowering PE_kernel using functional lowering."""

    # Generate the systolic array IR (same as test_proc_lowering.py)
    def small_SA(
        A: float32[2, 4],
        B: float32[4, 4],
        C: float32[2, 4]
    ):
        systolic_tile[float32, float32, float32, 4, 2, 4](A, B, C)

    s = allo.customize(small_SA)

    # Get the MLIR module
    mod = s.build(target="vhls", mode="sw_emu")
    module = mod.module  # Get the actual MLIR module

    # Find the PE_kernel function
    pe_func = None
    for func in module.body.operations:
        if hasattr(func, 'name') and 'PE_kernel' in str(func.name):
            pe_func = func
            break

    if not pe_func:
        print("ERROR: Could not find PE_kernel function")
        return

    print("=" * 80)
    print("Found PE_kernel function")
    print("=" * 80)

    # Extract PE information
    pe_analyzer = PEAnalyzer(pe_func)
    pe_info = pe_analyzer.extract()

    print(f"\nPE Info:")
    print(f"  Name: {pe_info['name']}")
    print(f"  K bound: {pe_info['k_bound']}")
    print(f"  Element type: {pe_info['element_type']}")
    print(f"  Num args: {pe_info['num_args']}")
    print(f"  Accumulator: {pe_info['accumulator']}")

    print(f"\nArguments:")
    for arg in pe_info['arguments']:
        print(f"  [{arg['index']}] {arg['name']}: {arg['type']} (role: {arg['role']})")

    print("\n" + "=" * 80)
    print("Lowering PE_kernel to DSLX function...")
    print("=" * 80)

    # Use functional lowering
    lowerer = MlirToDslxLowerer(pe_func)
    dslx_code = lowerer.lower()

    print("\nGenerated DSLX function:")
    print(dslx_code)

    # Save to file
    output_path = "/home/nvs26/allo-xls-backend/allo/backend/xls/pe_function.x"
    with open(output_path, 'w') as f:
        f.write(dslx_code)

    print(f"\n✓ Saved to: {output_path}")

if __name__ == "__main__":
    test_pe_functional_lowering()
