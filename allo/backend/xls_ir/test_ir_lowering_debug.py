"""Debug IR lowering."""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import int32
from allo._mlir.dialects import func as func_d, affine as affine_d

def allo_gemm_tiny(A: int32[2, 2], B: int32[2, 2]) -> int32[2, 2]:
    C: int32[2, 2] = 0
    for i, j, k in allo.grid(2, 2, 2):
        C[i, j] += A[i, k] * B[k, j]
    return C

print("Generating tiny 2x2 gemm...")
s = allo.customize(allo_gemm_tiny)
module = s.module

print("\n=== Full MLIR ===")
print(str(module))

print("\n=== Structure ===")
for op in module.body.operations:
    if isinstance(op, func_d.FuncOp):
        print(f'func.func @{op.name.value}')
        for block in op.body:
            for op2 in block.operations:
                print(f'  {type(op2).__name__}: {op2.operation.name}')

print("\n=== Now lowering ===")
from allo.backend.xls_ir.ir_lowerer import MlirToXlsIRLowerer

func_op = None
for op in module.body.operations:
    if isinstance(op, func_d.FuncOp):
        func_op = op
        break

lowerer = MlirToXlsIRLowerer(func_op)
ir_text = lowerer.lower()

print("\n=== Generated IR ===")
print(ir_text)

with open('/tmp/gemm_tiny.ir', 'w') as f:
    f.write(ir_text)
print("\nSaved to /tmp/gemm_tiny.ir")
