# README_STEP3 - Part 3 (Frequency-Domain Windowing)

## What this part proves

The Hamming window applied in the time domain (Part 2) is mathematically
identical to a three-term convolution applied in the frequency domain
(Part 3). The Python reference flow in `python/reference_fft.py` covers the
same tones used by the HDL simulations, and this README walks through the HDL
implementation of the frequency-domain window.

## Files added in Part 3

```text
rtl/part3/three_term.v          -- 4-stage pipeline doing alpha*X - (beta/2)*(X-1 + X+1)
rtl/part3/fft_freqwin_top.v     -- xfft_0 -> three_term -> abs_sq -> peak_detector
tb/part3/tb_fft_freqwin.sv      -- streams 12.5 MHz then 10 MHz tones, checks peak bins
scripts/create_part3_vivado_project.tcl
docs/part3_notes.md
```

`abs_sq.v` and `peak_detector.v` are reused as-is from Part 1 / Part 2.

## Three-term math (Lyons, Eq. 13-11)

```text
X_three_term(m) = alpha * X(m) - (beta/2) * X(m-1) - (beta/2) * X(m+1)
                with alpha = 0.54, beta = 0.46
```

Wrapping is circular: `X(-1) = X(N-1)` and `X(N) = X(0)`, because the DFT is
`2*pi` periodic.

Fixed-point coefficients (Q1.15):

```text
ALPHA_Q15 = round(0.54 * 32768) = 17695
HBETA_Q15 = round(0.23 * 32768) =  7537   (= beta/2)
```

## Pipeline

```
m -> RAM read addr -> [reg] -> mul -> [reg] -> sub + round + sat -> AXIS out
       (s0)            (s1)    (s2)            (s3)
```

Per frame the module:

1. Captures all `N = 256` FFT bins from `xfft_0` into `xre_mem` / `xim_mem`.
2. Sweeps `m = 0..N-1`, reads `X(m-1)`, `X(m)`, `X(m+1)` (wrapping).
3. Emits one three-term sample per cycle on its AXIS-like output.

Throughput: one frame every `2*N + latency` cycles. At 200 MHz that's
~2.6 microseconds per frame. The `abs_sq` and `peak_detector` blocks see a
clean streaming input with `tlast` aligned to `m = N-1`.

## Running the simulation

```tcl
source path/to/baryonic_space/scripts/create_part3_vivado_project.tcl
launch_simulation
```

Expected output near the end of `simulate.log`:

```text
[tb] 12.5 MHz tone -> peak bin 16  (value=0x...)
[tb] 10.0 MHz tone -> peak bin 13  (value=0x...)
tb_fft_freqwin: PASS
```

## Comparison against Part 2

To verify the equivalence numerically, dump the AXIS output of `three_term`
(Part 3) and the AXIS output of `xfft_0` from `fft_windowed_top` (Part 2) for
the same tone, and diff in Python. The largest absolute deviation is expected
to be on the order of 2^-14 of full scale -- rounding noise from the Q1.15
coefficients and the FFT IP's internal scaling.

The same comparison can be reproduced in a small numpy script by applying the
Hamming window before the FFT, then comparing it with the three-term operation
applied after the FFT. The largest expected differences are from Q1.15
coefficient rounding and the FFT IP scaling.
