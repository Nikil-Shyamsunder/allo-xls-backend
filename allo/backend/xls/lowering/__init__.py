"""MLIR lowering passes for XLS backend."""

from .mlir_to_dslx_fn import MlirToDslxLowerer as MlirToDslxFnLowerer
from .mlir_to_dslx_proc import MlirToDslxProcLowererAST
from .mlir_to_ir_fn import MlirToXlsIRLowerer

__all__ = [
    'MlirToDslxFnLowerer',      # MLIR → DSLX functions
    'MlirToDslxProcLowererAST',  # MLIR → DSLX procs (systolic arrays)
    'MlirToXlsIRLowerer',        # MLIR → XLS IR functions
]
