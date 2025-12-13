#!/usr/bin/env python3
"""4x4 K=4 Systolic Array - float32"""

import sys
sys.path.insert(0, '/home/nvs26/allo-xls-backend')

import allo
from allo.ir.types import float32
from allo.library.systolic import systolic


def systolic_4x4_k4_float32(A: "float32[4, 4]", B: "float32[4, 4]") -> "float32[4, 4]":
    """4x4 systolic array with K=4 using float32"""
    C: float32[4, 4] = 0
    systolic[float32, float32, float32, 4, 4, 4, 4, 4](A, B, C)
    return C


if __name__ == "__main__":
    s = allo.customize(systolic_4x4_k4_float32)
    print(s.module)
