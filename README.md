# Baryonic Space FPGA FFT Project

This repository contains the FPGA FFT implementation for Parts 1 through 4 of
the assignment. The source files live in portable folders, and the generated
Vivado projects can be recreated from Tcl scripts.

## Project Hierarchy

```text
baryonic_space/
+-- rtl/
|   +-- abs_sq.v
|   +-- peak_detector.v
|   +-- part1/
|   |   +-- fft_naive_top.v
|   +-- part2/
|       +-- fft_windowed_top.v
|       +-- hamming_window.v
|   +-- part3/
|       +-- fft_freqwin_top.v
|       +-- three_term.v
|   +-- part4/
|       +-- three_term_part4.v
|       +-- fft_freqwin_top_part4.v
|       +-- part4_axi_lite_regs.v
|       +-- dds_config_driver.v
|       +-- fft_pl_ps_top.v
+-- tb/
|   +-- part1/
|   |   +-- tb_fft_naive.sv
|   +-- part2/
|       +-- tb_fft_windowed.sv
|   +-- part3/
|       +-- tb_fft_freqwin.sv
|   +-- part4/
|       +-- tb_part4_regs_and_peak.sv
+-- mem/
|   +-- hamming_256.mem
|   +-- tone_10MHz_re.mem
|   +-- tone_10MHz_im.mem
|   +-- tone_12p5MHz_re.mem
|   +-- tone_12p5MHz_im.mem
+-- scripts/
|   +-- create_part1_vivado_project.tcl
|   +-- create_part2_vivado_project.tcl
|   +-- create_part3_vivado_project.tcl
|   +-- create_part4_vivado_project.tcl
|   +-- create_part4_zynq_bd_project.tcl
|   +-- build_part4_zynq_bitstream.tcl
|   +-- refresh_part4_project.tcl
|   +-- run_part4_sim.tcl
|   +-- add_part1_sources.tcl
|   +-- gen_hamming_part2.py
+-- docs/
|   +-- part1_notes.md
|   +-- part2_notes.md
|   +-- part3_notes.md
|   +-- part4_notes.md
|   +-- part4_axilite_reference.md
|   +-- part4_zybo_bringup_checklist.md
|   +-- vitis_yeni_app_guide.md
+-- software/
|   +-- part4/
|   |   +-- dds_fft_test.c
|   |   +-- dds_fft_assert_test.c
|   |   +-- vitis_baremetal_dds_fft_test.c
|   |   +-- Makefile
+-- part1/
|   +-- vivado_part1/
+-- part2/
|   +-- vivado_part2/
+-- part3/
|   +-- vivado_part3/
+-- part4/
    +-- vivado_part4/
    +-- vivado_part4_zynq/
```

## Part 1 - Naive FFT

Part 1 sends the complex input tones directly into the Xilinx FFT IP (`xfft_0`)
without applying a time-domain window.

Main files:

- `rtl/part1/fft_naive_top.v`
- `rtl/abs_sq.v`
- `rtl/peak_detector.v`
- `tb/part1/tb_fft_naive.sv`

Expected simulation result:

```text
12.5 MHz tone -> peak bin 16
10.0 MHz tone -> peak bin 13
tb_fft_naive: PASS
```

The 12.5 MHz tone falls exactly on FFT bin 16. The 10 MHz tone falls at bin
12.8, so its energy leaks into nearby FFT bins and the largest bin is expected
to be 13.

## Part 2 - Hamming Window FFT

Part 2 applies a Hamming window in the time domain before the FFT. The real and
imaginary input samples are multiplied by the same Hamming coefficient before
being sent to `xfft_0`.

Main files:

- `rtl/part2/fft_windowed_top.v`
- `rtl/part2/hamming_window.v`
- `rtl/abs_sq.v`
- `rtl/peak_detector.v`
- `tb/part2/tb_fft_windowed.sv`
- `mem/hamming_256.mem`

Expected simulation result:

```text
12.5 MHz windowed tone -> peak bin 16
10.0 MHz windowed tone -> peak bin 13
tb_fft_windowed: PASS
```

The peak bin does not change, but the Hamming window lowers side-lobe levels.
The tradeoff is a wider main lobe.

## Part 3 - Frequency-Domain Windowing

Part 3 applies the Hamming-equivalent three-term operation in the frequency
domain after the FFT:

```text
Xw[k] = 0.54*X[k] - 0.23*X[k-1] - 0.23*X[k+1]
```

Main files:

- `rtl/part3/fft_freqwin_top.v`
- `rtl/part3/three_term.v`
- `tb/part3/tb_fft_freqwin.sv`

Expected simulation result:

```text
12.5 MHz freqwin tone -> peak bin 16
10.0 MHz freqwin tone -> peak bin 13
tb_fft_freqwin: PASS
```

## Part 4 - Zynq PL/PS Communication

Part 4 adds the bonus PS/PL control path. The PS writes a DDS phase increment
over AXI-Lite, the PL feeds the generated complex sinusoid into the Part 4
timing-oriented frequency-domain windowed FFT chain, and the PS reads back the
detected FFT peak.

Main files:

- `rtl/part4/fft_pl_ps_top.v`
- `rtl/part4/fft_freqwin_top_part4.v`
- `rtl/part4/three_term_part4.v`
- `rtl/part4/part4_axi_lite_regs.v`
- `rtl/part4/dds_config_driver.v`
- `software/part4/dds_fft_test.c`
- `software/part4/dds_fft_assert_test.c`
- `software/part4/vitis_baremetal_dds_fft_test.c`

Register map:

```text
0x00 DDS_PINC
0x04 PEAK_STATUS  [7:0] peak_index, [8] sticky peak_valid
0x08 PEAK_VALUE
0x0c BUILD_INFO
```

## Regenerating Vivado Projects

The Vivado build folders are generated outputs. They do not need to be edited
manually.

To create and run the Part 1 project:

```tcl
source path/to/baryonic_space/scripts/create_part1_vivado_project.tcl
```

To create and run the Part 2 project:

```tcl
source path/to/baryonic_space/scripts/create_part2_vivado_project.tcl
```

To create the Part 3 and Part 4 projects:

```tcl
source path/to/baryonic_space/scripts/create_part3_vivado_project.tcl
source path/to/baryonic_space/scripts/create_part4_vivado_project.tcl
```

To create the Zybo Z7-20 block-design project and build the Part 4 bitstream:

```tcl
source path/to/baryonic_space/scripts/create_part4_zynq_bd_project.tcl
source path/to/baryonic_space/scripts/build_part4_zynq_bitstream.tcl
```

The scripts compute the repository root from the script location, so the
project does not need to be placed at a fixed `D:/github/...` path.

## Opening Existing XPR Files

The checked-in/generated XPR files are intended to be usable if the whole
repository folder is moved together:

- `part1/vivado_part1/fft_naive_part1.xpr`
- `part2/vivado_part2/fft_windowed_part2.xpr`
- `part3/vivado_part3/fft_freqwin_part3.xpr`
- `part4/vivado_part4/fft_pl_ps_part4.xpr`
- `part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xpr`

The RTL, testbench, and memory file entries use paths relative to the project
directory, such as `$PPRDIR/../../rtl/...`. The tone `.mem` stimulus files are
also part of the simulation fileset, so Vivado exports them into the XSim run
directory. The simulation `MEM_DIR` argument is:

```text
.
```

That means opening the XPR directly should work as long as the folder structure
is preserved. If Vivado reports missing generated IP or simulation files on a
new computer, run the Tcl scripts above once to regenerate the project cleanly.

## Current Verification

The Vivado projects in this repository were most recently regenerated or run
locally with Vivado 2024.2. The current checked-in logs show:

```text
Part 1: tb_fft_naive: PASS
Part 2: tb_fft_windowed: PASS
Part 3: tb_fft_freqwin: PASS
Part 4: tb_part4_regs_and_peak: PASS
```

Useful verification logs:

- `part1/vivado_part1/fft_naive_part1.sim/sim_1/behav/xsim/simulate.log`
- `part2/vivado_part2/vivado.log`
- `part3/vivado_part3/vivado.log`
- `part4/vivado_part4/fft_pl_ps_part4.sim/sim_1/behav/xsim/simulate.log`

Note: the Part 2 and Part 3 XSim `simulate.log` files in the generated run
folders may be empty after some scripted runs; their PASS messages are present
in the corresponding Vivado project logs listed above.

## Submission Notes

For assignment submission, include the source-oriented folders:

```text
rtl/
tb/
mem/
scripts/
docs/
README.md
README_STEP1.md
README_STEP2.md
README_STEP3.md
README_STEP4.md
```

Do not include generated Vivado output folders unless specifically required:

```text
*.cache/
*.gen/
*.hw/
*.ip_user_files/
*.runs/
*.sim/
*.jou
*.log
*.wdb
```

The `part1/`, `part2/`, `part3/`, and `part4/` Vivado folders can be
regenerated using the Tcl scripts.

## Suggested Codex Prompt

Use this prompt when opening the project on another computer with Codex:

```text
Bu klasordeki Baryonic Space FPGA FFT projesini incele.
Once README.md dosyasini oku.
Part 1, Part 2, Part 3 ve Part 4 icin Vivado projelerini scripts klasorundeki Tcl dosyalariyla yeniden olustur:
- scripts/create_part1_vivado_project.tcl
- scripts/create_part2_vivado_project.tcl
- scripts/create_part3_vivado_project.tcl
- scripts/create_part4_vivado_project.tcl

Vivado kuruluysa bu scriptleri calistirip simulasyonlarin PASS verdigini dogrula.
Part 1 icin beklenen testbench sonucu: tb_fft_naive: PASS.
Part 2 icin beklenen testbench sonucu: tb_fft_windowed: PASS.
Part 3 icin beklenen testbench sonucu: tb_fft_freqwin: PASS.
Part 4 icin beklenen testbench sonucu: tb_part4_regs_and_peak: PASS.
Kaynak hiyerarsisi rtl/, tb/, mem/, scripts/ altinda korunmali; generated Vivado klasorlerini kaynak dosya gibi duzenleme.
```
