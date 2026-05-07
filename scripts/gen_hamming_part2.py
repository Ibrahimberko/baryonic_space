#!/usr/bin/env python3
"""
Generate fixed-point Hamming-window coefficients for the Verilog windowing
stage in Part 2 of the Baryonic Space FPGA project.

Math (matches the notebook):
    h[n] = 0.54 - 0.46 * cos(2*pi*n/N), n = 0 .. N-1

Fixed-point conversion (default Q1.15 signed, 16-bit):
    h_int[n] = clip( round(h[n] * 2^FRAC), -2^(W-1), 2^(W-1) - 1 )

Notes
-----
* Hamming is non-negative, so all coefficients are >= 0.
* Only the centre sample (n = N/2) hits 1.0. round(1.0 * 32768) = 32768 does
  not fit in signed 16-bit, so it gets clamped to 32767 ≈ 0.99997. The error
  is 1 LSB at one single sample — well below the noise floor of the 12-bit FFT.
* Output format is one hex value per line, $readmemh-compatible. Comments
  starting with "//" are skipped by $readmemh.
"""

import argparse
import os
import numpy as np


def main():
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('--N',     type=int, default=256, help='Window length (default 256)')
    p.add_argument('--width', type=int, default=16,  help='Coefficient bit width, signed (default 16)')
    p.add_argument('--frac',  type=int, default=15,  help='Fractional bits, Q1.<frac> (default 15)')
    p.add_argument('--out',   type=str, default='hamming_256.mem', help='Output .mem file path')
    args = p.parse_args()

    N, W, F = args.N, args.width, args.frac

    # Floating-point window
    n = np.arange(N)
    h = 0.54 - 0.46 * np.cos(2.0 * np.pi * n / N)

    # Fixed-point conversion (round-half-to-even, then clamp into signed range)
    scale = 1 << F
    coef_int = np.round(h * scale).astype(np.int64)

    smax =  (1 << (W - 1)) - 1
    smin = -(1 << (W - 1))
    coef_clipped = np.clip(coef_int, smin, smax)
    n_clipped = int(np.sum(coef_int != coef_clipped))

    # Two's-complement bit pattern for hex output
    mask = (1 << W) - 1
    hex_digits = (W + 3) // 4

    out_dir = os.path.dirname(args.out)
    if out_dir:
        os.makedirs(out_dir, exist_ok=True)

    with open(args.out, 'w') as f:
        f.write(f'// Hamming window, N={N}, Q1.{F} signed ({W}-bit two\'s complement)\n')
        f.write(f'// h[n] = 0.54 - 0.46*cos(2*pi*n/{N})\n')
        f.write(f'// h_int[n] = clip(round(h[n] * 2^{F}), {smin}, {smax})\n')
        f.write(f'// Format: one hex value per line ($readmemh-compatible)\n')
        f.write(f'//\n')
        for i, c in enumerate(coef_clipped):
            tc = int(c) & mask
            f.write(f'{tc:0{hex_digits}x}  // n={i:3d}  h={h[i]:.6f}  int={int(c):+6d}\n')

    print(f'Wrote {N} coefficients to {args.out}')
    print(f'Float range : [{h.min():.6f}, {h.max():.6f}]')
    print(f'Int range   : [{coef_clipped.min()}, {coef_clipped.max()}]')
    if n_clipped:
        print(f'Clipped     : {n_clipped} sample(s) saturated to int{W} bounds')
    else:
        print(f'Clipped     : 0')


if __name__ == '__main__':
    main()
