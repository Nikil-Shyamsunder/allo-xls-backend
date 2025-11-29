"""XLS backend for DSLX code generation.

This module provides MLIR to DSLX lowering with AST-based code generation.
"""

# AST infrastructure
from .dslx_ast import DslxProcSerializer
from .dslx_ast.proc_ast import *
from .dslx_ast.function_ast import *

# Builders
from .builders import (
    PEProcBuilder,
    ProcModuleBuilder,
    GridChannelNetworkBuilder,
    GridSpawnBuilder,
    SystolicArrayBuilder
)

# Lowering
from .lowering import MlirToDslxProcLowererAST

# Systolic array extraction
from .systolic import (
    GridExtractor,
    FIFOAnalyzer,
    ConnectivityExtractor,
    PEAnalyzer
)

__all__ = [
    # AST
    'DslxProcSerializer',
    
    # Builders
    'PEProcBuilder',
    'ProcModuleBuilder',
    'GridChannelNetworkBuilder',
    'GridSpawnBuilder',
    'SystolicArrayBuilder',
    
    # Lowering
    'MlirToDslxProcLowererAST',
    
    # Extraction
    'GridExtractor',
    'FIFOAnalyzer',
    'ConnectivityExtractor',
    'PEAnalyzer',
]
