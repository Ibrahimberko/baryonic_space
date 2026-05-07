# Part 4 - Zynq PL/PS Communication

## Architecture

```
PS AXI-Lite writes DDS_PINC
        |
        v
part4_axi_lite_regs -> dds_config_driver -> DDS Compiler
                                            |
                                            v
                                      fft_freqwin_top_part4
                                      xfft_0 -> three_term_part4 -> abs_sq -> peak_detector
                                            |
                                            v
PS AXI-Lite reads PEAK_STATUS / PEAK_VALUE
```

Part 4 keeps the same mathematical pipeline as Part 3, but uses timing-oriented
copies of the frequency-domain window blocks under `rtl/part4`. The original
Part 3 RTL remains unchanged for comparison.

## Register Map

| Offset | Register | Access | Description |
| --- | --- | --- | --- |
| `0x00` | `DDS_PINC` | RW | Phase increment word for DDS Compiler |
| `0x04` | `PEAK_STATUS` | RO / W1C | `[7:0] peak_index`, `[8] peak_valid_sticky`; write `0x100` to clear sticky valid |
| `0x08` | `PEAK_VALUE` | RO | Latched max `abs_sq` value for the reported peak |
| `0x0c` | `BUILD_INFO` | RO | Simple build/version word |

`PEAK_STATUS[8]` is sticky because the ARM side is much slower than the FFT
pipeline. Software clears it, waits until it sets again, then reads the peak
index from bits `[7:0]`.

## AXI-Lite Reference Structure

The AXI-Lite register block in `rtl/part4/part4_axi_lite_regs.v` is intended
to be shown as the Part 4 version of a standard Vivado AXI-Lite peripheral
template such as `axilite_ex_v1_0_S00_AXI.vhd`.

The reference template uses:

- `slv_reg0..slv_reg7` as memory-mapped 32-bit registers
- `slv_reg_wren` to update registers on a valid AW/W transaction
- `S_AXI_WSTRB` byte enables for partial writes
- a case-based read mux selected from `axi_araddr`
- PL-side write inputs such as `reg0_wr_i` plus `regs_wr_i`

Part 4 keeps the same pattern, but names the registers by function:

| Reference-style register | Part 4 meaning | Direction |
| --- | --- | --- |
| `slv_reg0` | `DDS_PINC` at `0x00` | PS writes, PL/DDS config reads |
| `slv_reg1` | `PEAK_STATUS` at `0x04` | PL updates, PS reads / clears valid bit |
| `slv_reg2` | `PEAK_VALUE` at `0x08` | PL updates, PS reads |
| `slv_reg3` | `BUILD_INFO` at `0x0c` | constant read-only |

So in the report, the VHDL reference can be cited as the generic AXI-Lite
register-bank template, while `part4_axi_lite_regs.v` is the project-specific
DDS/FFT peak register map derived from that idea.

## DDS PINC

For a 32-bit phase accumulator:

```
PINC = round((f_desired / fs) * 2^32)
```

Example for 10 MHz at 200 MHz:

```
PINC = round((10e6 / 200e6) * 2^32) = 214748365 = 0x0ccccccd
```

The software test uses the same formula and expects the FFT estimate to be
within one bin:

```
f_res = fs / N = 200e6 / 256 = 781.25 kHz
```

## Vivado Integration Notes

Generate `dds_compiler_0` with:

- Phase generator and SIN/COS LUT
- Parameter selection: Hardware Parameters
- Phase increment: Programmable, with PINC on `s_axis_config_tdata`
- 32-bit phase width
- 12-bit sine/cosine output
- AXI-stream output with one 16-bit lane per component
- `aresetn` enabled

`fft_pl_ps_top.v` assumes the lower DDS lane is real/cosine and the upper lane
is imaginary/sine. If your DDS Compiler configuration swaps the lanes, swap the
two assignments in the wrapper; otherwise a positive tone can appear as a
negative-frequency FFT peak.

Use `scripts/create_part4_vivado_project.tcl` to create the source-oriented
Vivado project and `scripts/run_part4_sim.tcl` to rerun the Part 4 smoke
simulation inside that project.

For the Zybo Z7-20 PS/PL block design, use:

```tcl
source path/to/baryonic_space/scripts/create_part4_zynq_bd_project.tcl
source path/to/baryonic_space/scripts/build_part4_zynq_bitstream.tcl
```
