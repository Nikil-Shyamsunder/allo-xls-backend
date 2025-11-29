# XLS Backend - DSLX Code Generation

AST-based MLIR to DSLX lowering for hardware synthesis.

## Directory Structure

```
allo/backend/xls/
├── dslx_ast/          # AST node definitions
│   ├── proc_ast.py        # Proc AST (channels, spawn, config)
│   ├── function_ast.py    # Function AST (expressions, statements)
│   └── serializer.py      # AST → DSLX text conversion
│
├── builders/          # High-level builders
│   └── proc_builders.py   # Grid-based systolic array builders
│
├── lowering/          # MLIR → DSLX transformation
│   ├── proc_lowerer.py       # Proc-based lowering (systolic arrays)
│   └── function_lowerer.py   # Function-based lowering
│
├── systolic/          # Systolic array extraction
│   ├── extractors.py      # Grid, PE, connectivity extraction from MLIR
│   └── detector.py        # Pattern detection
│
├── utils/             # Utilities
│   ├── codegen_context.py
│   └── debug_utils.py
│
└── tests/             # Test suite
```

## Usage

### Building a Systolic Array

```python
from allo.backend.xls import SystolicArrayBuilder, DslxProcSerializer

# Build AST
builder = SystolicArrayBuilder(rows=2, cols=4, k_bound=4, elem_type="F32")
module = builder.build_complete_module()

# Serialize to DSLX
serializer = DslxProcSerializer()
dslx_code = serializer.serialize(module)
```

### Lowering MLIR to DSLX

```python
from allo.backend.xls.lowering import MlirToDslxProcLowererAST

lowerer = MlirToDslxProcLowererAST(mlir_module)
dslx_code = lowerer.lower()
```

## Architecture

**AST-Based Approach**: Separates structure definition (AST nodes) from formatting (serializer), enabling:
- Generic, reusable components
- Easy testing and validation
- Multiple output formats (DSLX, JSON, etc.)
- Composable transformations

**Grid-Based Focus**: Currently supports 2D grid topologies (systolic arrays). Future work may add other patterns.

## Key Components

- **AST Nodes**: Define DSLX structure (procs, channels, expressions)
- **Builders**: High-level APIs for common patterns
- **Serializer**: Converts AST → formatted DSLX text
- **Lowering**: Extracts patterns from MLIR and builds AST
- **Extractors**: Analyze MLIR for grid dimensions, PE structure, connectivity

## Testing

```bash
# Run AST tests
python test_ast_proc_gen.py
python test_grid_ast_builders.py

# Run lowering tests
python test_proc_lowering.py
```
