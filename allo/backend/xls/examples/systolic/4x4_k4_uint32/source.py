#!/usr/bin/env python3
"""4x4 K=4 Systolic Array - uint32"""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import uint32
from allo.library.systolic import systolic


def systolic_4x4_k4_uint32(A: "uint32[4, 4]", B: "uint32[4, 4]") -> "uint32[4, 4]":
    """4x4 systolic array with K=4 using uint32"""
    C: uint32[4, 4] = 0
    systolic[uint32, uint32, uint32, 4, 4, 4, 4, 4](A, B, C)
    return C


if __name__ == "__main__":
    s = allo.customize(systolic_4x4_k4_uint32)
    print(s.module)
