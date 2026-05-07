# Part 4 AXI-Lite Register Reference

The files `axilite_ex_v1_0.vhd` and `axilite_ex_v1_0_S00_AXI.vhd` are a good
reference for explaining the AXI-Lite register structure used in Part 4.

## What the Reference Does

The reference slave module has the common Vivado AXI-Lite shape:

- `slv_reg0..slv_reg7` are 32-bit memory-mapped registers.
- `axi_awready` and `axi_wready` accept write address/data.
- `slv_reg_wren` updates the selected register.
- `S_AXI_WSTRB` enables byte-wise writes.
- `axi_arready` accepts a read address.
- a `case` statement selects one register into `reg_data_out`.
- PL logic can push status into the register bank through `reg*_wr_i` and
  `regs_wr_i`.

## How Part 4 Maps to It

Part 4 uses the same concept, but with meaningful register names:

| AXI offset | Reference equivalent | Part 4 signal | Purpose |
| --- | --- | --- | --- |
| `0x00` | `slv_reg0` | `dds_pinc` | PS writes DDS phase increment |
| `0x04` | `slv_reg1` | `peak_status` | PL reports peak index and sticky valid |
| `0x08` | `slv_reg2` | `peak_value` | PL reports peak magnitude |
| `0x0c` | `slv_reg3` | `build_info` | constant/version word |

The main difference is direction. In the reference, many registers are generic
read/write registers. In Part 4:

- `DDS_PINC` is PS-writeable and drives the DDS config path.
- `PEAK_STATUS` is mostly PL-written and PS-readable; PS writes bit 8 only to
  clear the sticky valid flag.
- `PEAK_VALUE` is PL-written and PS-readable.

This makes the Part 4 block easy to justify in a report: it is not a new bus
protocol, just the standard AXI-Lite register-bank template specialized for
DDS control and FFT peak readback.
