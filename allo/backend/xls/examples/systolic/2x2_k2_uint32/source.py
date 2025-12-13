#!/usr/bin/env python3
"""2x2 K=2 Systolic Array - uint32"""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import uint32
from allo.library.systolic import systolic


def systolic_2x2_k2_uint32(A: "uint32[2, 2]", B: "uint32[2, 2]") -> "uint32[2, 2]":
    """2x2 systolic array with K=2 using uint32"""
    C: uint32[2, 2] = 0
    systolic[uint32, uint32, uint32, 2, 2, 2, 2, 2](A, B, C)
    return C


if __name__ == "__main__":
    s = allo.customize(systolic_2x2_k2_uint32)
    print(s.module)
