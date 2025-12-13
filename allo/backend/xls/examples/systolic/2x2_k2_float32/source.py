#!/usr/bin/env python3
"""2x2 K=2 Systolic Array - float32"""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32
from allo.library.systolic import systolic


def systolic_2x2_k2_float32(A: "float32[2, 2]", B: "float32[2, 2]") -> "float32[2, 2]":
    """2x2 systolic array with K=2 using float32"""
    C: float32[2, 2] = 0
    systolic[float32, float32, float32, 2, 2, 2, 2, 2](A, B, C)
    return C


if __name__ == "__main__":
    s = allo.customize(systolic_2x2_k2_float32)
    print(s.module)
