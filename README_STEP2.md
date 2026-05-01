# FPGA FFT Project - Step 2

This step adds the Part 1 RTL and simulation files for the naive FFT task.

## Files

- `rtl/abs_sq.v`
  - Computes `real^2 + imag^2`.
- `rtl/peak_detector.v`
  - Finds the largest `abs_sq` value in one 256-sample FFT frame.
- `rtl/fft_naive_top.v`
  - Wraps the Xilinx `xfft_0` IP.
  - Sends one configuration word to the FFT IP after reset.
  - Computes `abs(FFT)^2`.
  - Reports the peak FFT bin using `xk_index`.
- `sim/tb_fft_naive.sv`
  - Generates a 200 MHz clock.
  - Reads `mem/tone_12p5MHz.mem` and `mem/tone_10MHz.mem`.
  - Sends two FFT frames.
  - Checks the expected peak bins: 16 and 13.
- `scripts/add_part1_sources.tcl`
  - Adds these files to the Vivado project.

## Vivado usage

Open your Vivado project, then run this Tcl command from the Vivado Tcl Console:

```tcl
source C:/Users/USER/Documents/baryonic_space/baryonic_space-main/scripts/add_part1_sources.tcl
```

Then run:

```tcl
launch_simulation
```

Expected simulation messages:

```text
12.5 MHz peak bin = 16
10.0 MHz peak bin = 13
Naive FFT simulation finished.
```

## Important notes

The FFT IP instance name is assumed to be:

```text
xfft_0
```

The wrapper assumes Xilinx FFT AXI data packing for 12-bit complex samples:

```text
tdata[11:0]  = real
tdata[27:16] = imag
```

If Vivado generated a different `xfft_0` port list or a different `tuser` width, open the IP's instantiation template and adjust `rtl/fft_naive_top.v`.

The default FFT configuration word is:

```text
16'h0001
```

This is intended as forward FFT configuration. If the IP reports overflow or unexpected scaling, adjust `FFT_CONFIG_TDATA` according to the generated Xilinx FFT IP configuration format.
