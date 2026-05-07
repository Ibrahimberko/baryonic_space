# README_STEP4 - Part 4 (Zynq PL/PS Communication Bonus)

Part 4 connects the FPGA FFT chain to the Zynq PS through AXI-Lite:

- PS writes the DDS phase increment (`DDS_PINC`)
- PL generates a complex sinusoid with `dds_compiler_0`
- the Part 3 windowed FFT finds the peak bin
- PS reads the sticky peak result and checks the estimated frequency

## Files Added

```text
rtl/part4/three_term_part4.v              -- Part 4 timing-specific three-term window
rtl/part4/fft_freqwin_top_part4.v         -- Part 4 timing-specific windowed FFT top
rtl/part4/part4_axi_lite_regs.v           -- AXI-Lite register map
rtl/part4/dds_config_driver.v             -- sends DDS PINC config words
rtl/part4/fft_pl_ps_top.v                 -- DDS -> Part 4 FFT -> AXI readable peak
tb/part4/tb_part4_regs_and_peak.sv        -- register/peak smoke test
software/part4/dds_fft_test.c             -- Zynq Linux /dev/mem test
software/part4/dds_fft_assert_test.c      -- compact Vitis assertion test
software/part4/vitis_baremetal_dds_fft_test.c -- Vitis standalone PS test
scripts/create_part4_vivado_project.tcl
scripts/create_part4_zynq_bd_project.tcl
scripts/build_part4_zynq_bitstream.tcl
scripts/run_part4_sim.tcl
scripts/refresh_part4_project.tcl
docs/part4_notes.md
```

Part 3 sources are intentionally left as their original Part 3 implementation.
Any timing-oriented edits for the Zynq build live only in `rtl/part4`.

## Register Map

| Offset | Register | Access | Description |
| --- | --- | --- | --- |
| `0x00` | `DDS_PINC` | RW | DDS phase increment |
| `0x04` | `PEAK_STATUS` | RO / W1C | `[7:0] peak_index`, `[8] peak_valid_sticky`; write `0x100` to clear |
| `0x08` | `PEAK_VALUE` | RO | peak magnitude-squared |
| `0x0c` | `BUILD_INFO` | RO | simple build/version word |

This is the project-specific version of the usual Vivado AXI-Lite template
style shown in `axilite_ex_v1_0_S00_AXI.vhd`: instead of generic
`slv_reg0..slv_reg7`, the same register-bank idea is named as `DDS_PINC`,
`PEAK_STATUS`, `PEAK_VALUE`, and `BUILD_INFO`.

## Software Test

On Zynq Linux:

```sh
cd software/part4
gcc -O2 -Wall -Wextra -o dds_fft_test dds_fft_test.c -lm
sudo ./dds_fft_test 0x43c00000
```

The test frequencies are `10 MHz`, `12.5 MHz`, `25 MHz`, and `50 MHz`.
For each one, the expected tolerance is one FFT bin:

```text
f_res = fs / N = 200 MHz / 256 = 781.25 kHz
```

## Vivado

```tcl
source path/to/baryonic_space/scripts/create_part4_vivado_project.tcl
```

The script creates `xfft_0` and `dds_compiler_0`, then adds the Part 4 RTL.
Check the DDS Compiler customisation GUI before synthesis: parameter selection
must be `Hardware Parameters`, phase increment must be `Programmable`, and it
must expose a PINC config input plus sine/cosine AXI-stream data output.

For the Zybo Z7-20 PS/PL block design used by Vitis:

```tcl
source path/to/baryonic_space/scripts/create_part4_zynq_bd_project.tcl
source path/to/baryonic_space/scripts/build_part4_zynq_bitstream.tcl
```

The Zynq BD project is generated under:

```text
part4/vivado_part4_zynq/
```

The Vitis hardware handoff is exported as:

```text
part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xsa
```

The generated bitstream is:

```text
part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.runs/impl_1/system_wrapper.bit
```

Latest verified route timing at 200 MHz:

```text
Setup: 0 failing endpoints, worst slack 0.056 ns
Hold:  0 failing endpoints, worst slack 0.025 ns
```
