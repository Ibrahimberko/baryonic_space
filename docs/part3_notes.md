# Part 3 - Frequency-Domain Windowing

## Math

Multiplying a time-domain signal by a Hamming window
`w[n] = alpha - beta * cos(2*pi*n/N)` is mathematically equivalent to
convolving the FFT result with the three-tap kernel
`[ -beta/2, alpha, -beta/2 ]`.

Lyons, Eq. 13-11:

```
X_three_term(m) = alpha * X(m) - (beta/2) * X(m-1) - (beta/2) * X(m+1)
                with alpha = 0.54, beta = 0.46
```

Since the DFT is `2*pi` periodic the indices wrap modulo `N`, i.e.
`X(-1) = X(N-1)` and `X(N) = X(0)`. The Python notebook handles this by padding
`X` with `X[-1]` on the left and `X[0]` on the right before calling
`np.convolve(..., 'same')`.

## RTL implementation

`rtl/part3/three_term.v` is a 4-stage pipeline:

| Stage | Action |
|-------|--------|
| s0 | sweep counter `m` drives three RAM read addresses (`m-1`, `m`, `m+1`) with circular wrap |
| s1 | `xre_mem` / `xim_mem` outputs registered |
| s2 | `alpha * X(m)` and `(beta/2) * (X(m-1) + X(m+1))` (mapped to DSP slices) |
| s3 | subtract, round-to-nearest by `+2^14`, arithmetic shift right 15, saturate to `W` bits |

The bin RAMs are filled during the FFT IP output phase and re-read during the
sweep, so each frame takes `2 * N` valid cycles end-to-end (plus the FFT IP's
own latency). For the 200 MHz clock this is ~2.6 microseconds per frame.

Coefficients are stored as 17-bit signed-positive Q1.15 constants:

```
ALPHA_Q15 = round(0.54 * 32768) = 17695
HBETA_Q15 = round(0.23 * 32768) =  7537   (= beta/2)
```

## Top-level wiring

```
IQ samples -> xfft_0 -> three_term -> abs_sq -> peak_detector -> peak_index/peak_value
```

This is the same back-end as Part 1 and Part 2; only the path between the FFT
IP and `abs_sq` differs (Part 1: nothing; Part 2: time-domain Hamming before
the FFT; Part 3: three-term after the FFT).

## Expected simulation result

```
12.5 MHz tone -> peak bin 16
10.0 MHz tone -> peak bin 13
tb_fft_freqwin: PASS
```

The peak-bin indices are identical to Part 2 (the operation is mathematically
equivalent). The side-lobe levels in the abs_sq waveform should match a numpy
reference that compares time-domain Hamming windowing against the equivalent
three-term frequency-domain operation.

## Comparing to Part 2

In simulation the bin-by-bin output of `three_term` is expected to match the
output of `hamming_window` + `xfft_0` from Part 2 to within a few LSBs of
quantisation noise (the Q1.15 coefficient rounding and the FFT IP's internal
scaling can differ slightly between paths). For a stricter check, dump
`m_axis_data_tdata` of `xfft_0` for both Part 2 and Part 3 to a CSV and diff
in Python; the largest absolute deviation should be O(2^-14) of full scale.

## How to regenerate the Vivado project

```tcl
source path/to/baryonic_space/scripts/create_part3_vivado_project.tcl
launch_simulation
```

The Tcl script removes any prior `part3/vivado_part3/` build folder and
re-creates the project, the FFT IP (with the same configuration as Part 1 and
Part 2), and the simulation fileset. Memory files are added to `sim_1` so
Vivado copies them next to the XSim binary; the testbench reads them with
`MEM_DIR=.`.
