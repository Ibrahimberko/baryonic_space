# Part 4 PS Test Program

Build on the Zynq Linux target:

```sh
make
sudo ./dds_fft_test
```

Or pass a custom AXI-Lite base address from the Vivado Address Editor:

```sh
sudo ./dds_fft_test 0x43c00000
```

Register map expected by the program:

| Offset | Name | Direction | Bits |
| --- | --- | --- | --- |
| `0x00` | `DDS_PINC` | PS write / readback | `[31:0]` DDS phase increment |
| `0x04` | `PEAK_STATUS` | PS read, W1C bit 8 | `[7:0]` peak bin, `[8]` sticky valid |
| `0x08` | `PEAK_VALUE` | PS read | `[31:0]` magnitude-squared peak value |
| `0x0c` | `BUILD_INFO` | PS read | `[31:0]` build/version word |

The test writes several DDS frequencies, waits for a fresh FFT peak, converts
the reported bin back to Hz, and asserts that the error is no larger than
`fs/N = 200 MHz / 256 = 781.25 kHz`.

## Vitis Bare-Metal

For a Vitis standalone application, use:

```text
vitis_baremetal_dds_fft_test.c
```

For the smaller assertion-focused Vitis test, use:

```text
dds_fft_assert_test.c
```

Add it to an `Empty Application` project created from the exported Vivado XSA.
The code uses `Xil_Out32()` / `Xil_In32()` instead of Linux `/dev/mem`.

If Vivado Address Editor assigns a different base address, set it in the Vitis
compiler symbols:

```text
PART4_BASEADDR=0x43C00000
```

or edit the `#define PART4_BASEADDR` value in the C file.
