# Systolic Array Examples

Complete systolic array examples with full pipeline outputs (MLIR → DSLX → IR → Verilog).

## Variants

| Variant | Grid | K | Type | Description |
|---------|------|---|------|-------------|
| `2x2_k1_uint32` | 2×2 | 1 | uint32 | Minimal systolic array, unsigned int |
| `2x2_k1_float32` | 2×2 | 1 | float32 | Minimal systolic array, float |
| `2x2_k2_uint32` | 2×2 | 2 | uint32 | Small systolic array, unsigned int |
| `2x2_k2_float32` | 2×2 | 2 | float32 | Small systolic array, float |
| `4x4_k4_uint32` | 4×4 | 4 | uint32 | Medium systolic array, unsigned int |
| `4x4_k4_float32` | 4×4 | 4 | float32 | Medium systolic array, float |

## Quick Start

Generate all variants:

```bash
./generate_all.sh
```

This will:
1. Activate the `allo` conda environment
2. Generate complete pipeline output for each variant

**Note:** The script automatically activates `conda activate allo`. Make sure the conda environment is set up.

## Directory Structure

Each variant directory contains:

```
2x2_k1_uint32/
├── source.py          # Allo Python source (run to get MLIR)
├── systolic.mlir      # Generated MLIR
├── systolic.x         # Generated DSLX
├── systolic.ir        # XLS IR
├── systolic_opt.ir    # Optimized IR
└── systolic.v         # Final Verilog
```

## Manual Generation

To generate a single variant:

```bash
conda activate allo
cd 2x2_k1_uint32
python3 source.py > temp.mlir
python3 ../../../scripts/mlir_to_verilog_proc.py temp.mlir -o . --keep-intermediates --name systolic
rm temp.mlir
```

## Pipeline

```
Allo Python (source.py)
    ↓
MLIR (systolic.mlir)
    ↓
DSLX (systolic.x)
    ↓
XLS IR (systolic.ir)
    ↓
Optimized IR (systolic_opt.ir)
    ↓
Verilog (systolic.v)
```

## Tools Used

- **Allo**: Compiles Python to MLIR
- **MlirToDslxProcLowererAST**: Lowers MLIR to DSLX
- **ir_converter_main**: Converts DSLX to XLS IR
- **opt_main**: Optimizes IR
- **codegen_main**: Generates Verilog
