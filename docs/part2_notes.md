# Part 2 Notes - Hamming Window FFT

## Purpose

Part 2 adds a Hamming window before the FFT. The goal is to reduce spectral
leakage for tones that do not land exactly on an FFT bin.

The data path is:

```text
input complex sample -> hamming_window -> xfft_0 -> abs_sq -> peak_detector
```

## Hamming Window

The Hamming coefficient file is:

```text
mem/hamming_256.mem
```

It contains 256 Q1.15 coefficients. The same coefficient is applied to both the
real and imaginary parts of the complex input sample:

```text
windowed_real = input_real * hamming[n]
windowed_imag = input_imag * hamming[n]
```

The multiplier output is rounded and shifted back to the 12-bit signed input
width before the sample is sent into the FFT IP.

## Expected Peaks

The sample rate and FFT length are unchanged from Part 1:

```text
fs = 200 MHz
N  = 256
bin_spacing = 781.25 kHz
```

- 12.5 MHz lands exactly on bin 16, so the peak remains bin 16.
- 10 MHz lands at bin 12.8, so the peak remains bin 13.

The window does not move the main frequency peak. It reduces side-lobe leakage
while widening the main lobe.

## Simulation

Run:

```tcl
source path/to/baryonic_space/scripts/create_part2_vivado_project.tcl
```

Expected result:

```text
12.5 MHz windowed peak bin = 16
10.0 MHz windowed peak bin = 13
tb_fft_windowed: PASS
```

The testbench file is:

```text
tb/part2/tb_fft_windowed.sv
```
