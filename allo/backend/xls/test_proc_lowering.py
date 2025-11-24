"""Test proc-based lowering on systolic array."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32
from allo.library.systolic import systolic
from allo._mlir.dialects import func as func_d

from allo.backend.xls.proc_lowerer import MlirToDslxProcLowerer


def small_SA(A: "float32[2, 4]", B: "float32[4, 8]") -> "float32[2, 8]":
    C: float32[2, 8] = 0
    systolic[float32, float32, float32, 2, 4, 8, 2, 4, "small"](A, B, C)
    return C


def main():
    print("Generating Allo systolic array IR...")
    s = allo.customize(small_SA)
    s.compose(systolic, instantiate=[float32, float32, float32, 2, 4, 8, 2, 4], id="small")

    module = s.module

    print("\n=== MLIR Module (first 100 lines) ===")
    mlir_str = str(module)
    lines = mlir_str.split('\n')
    for i, line in enumerate(lines[:100]):
        print(f"{i+1:3}: {line}")

    print("\n\n=== Analyzing for streaming patterns ===")
    proc_lowerer = MlirToDslxProcLowerer(module)

    if proc_lowerer.should_use_procs():
        print("✓ Streaming/dataflow patterns detected!")
        print(f"  - Streaming memrefs: {len(proc_lowerer.pattern_detector.streaming_memrefs)}")
        print(f"  - Dataflow functions: {proc_lowerer.pattern_detector.dataflow_funcs}")
        print(f"  - Pipelined loops: {proc_lowerer.pattern_detector.pipelined_loops}")
        print(f"  - PE instances: {proc_lowerer.pattern_detector.pe_instances}")

        print("\n=== Generating DSLX Proc Code ===")
        dslx_code = proc_lowerer.lower()
        print(dslx_code)
    else:
        print("✗ No streaming patterns detected, would use function-based lowering")


if __name__ == "__main__":
    main()
