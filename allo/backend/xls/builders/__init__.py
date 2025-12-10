"""High-level builders for DSLX constructs."""

# New XLS-compatible builder (recommended)
from .xls_systolic_builder import XLSSystolicArrayBuilder

# Deprecated builders (kept for backward compatibility)
# ⚠️  These use individual channels and fail XLS compilation
from .proc_builders import (
    PEProcBuilder,
    ProcModuleBuilder,
    GridChannelNetworkBuilder,
    GridSpawnBuilder,
    SystolicArrayBuilder
)

__all__ = [
    # Recommended
    'XLSSystolicArrayBuilder',

    # Deprecated (use XLSSystolicArrayBuilder instead)
    'PEProcBuilder',
    'ProcModuleBuilder',
    'GridChannelNetworkBuilder',
    'GridSpawnBuilder',
    'SystolicArrayBuilder'
]
