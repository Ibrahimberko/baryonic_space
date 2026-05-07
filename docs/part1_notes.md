# Part 1 Notes - Naive FFT

## Project setup

The testbench uses a 200 MHz clock:

```text
fs = 200 MHz
N  = 256 samples
```

The FFT bin spacing is:

```text
bin_resolution = fs / N
               = 200 MHz / 256
               = 781.25 kHz
```

For the 12.5 MHz complex exponential:

```text
12.5 MHz / 781.25 kHz = 16.0
```

So the tone lands exactly on FFT bin 16. Its energy should be concentrated at
that bin, assuming the input frame contains exactly 256 samples.

For the 10 MHz complex exponential:

```text
10 MHz / 781.25 kHz = 12.8
```

This tone is between FFT bins 12 and 13. Because it does not complete an
integer number of cycles within the 256-sample DFT frame, the rectangularly
truncated signal has a discontinuity at the frame boundary. That spreads energy
into nearby bins; this is spectral leakage. The largest bin is expected near
bin 13 for natural-order FFT output.

## Why compute abs(FFT)^2?

The FFT output is complex:

```text
X[k] = real[k] + j imag[k]
```

Magnitude is:

```text
|X[k]| = sqrt(real[k]^2 + imag[k]^2)
```

For peak detection, the square root is unnecessary because square root is
monotonic. The largest `|X[k]|` is also the largest:

```text
abs_sq[k] = real[k]^2 + imag[k]^2
```

This is cheaper and simpler in Verilog than implementing a square-root block.

## AXI4-Stream signals

The FFT IP uses AXI4-Stream style handshaking.

```text
tvalid
```

The source asserts this when the current data bus value is valid.

```text
tready
```

The sink asserts this when it can accept data.

```text
tvalid && tready
```

A sample is transferred only on a clock edge where both are high.

```text
tlast
```

Marks the final sample of a frame. For this project, `tlast` is asserted on
sample index 255 of each 256-sample input frame.

The Xilinx FFT IP also provides `xk_index` in `m_axis_data_tuser` when enabled.
This tells which FFT bin the current output sample belongs to.

## Vivado FFT IP integration notes

The RTL assumes `xfft_0` is generated manually in Vivado with:

```text
Transform Length   = 256
Input Data Width   = 12
Data Format        = Fixed Point
Output Ordering    = Natural Order
XK_INDEX           = enabled
```

Check the Vivado-generated `xfft_0` instantiation template. If port widths or
port names differ, update the FFT IP instantiation block in:

```text
rtl/part1/fft_naive_top.v
```
