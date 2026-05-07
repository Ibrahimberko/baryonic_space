// dds_fft_assert_test.c
//
// Compact C assertion test for the Part 4 PL/PS FFT system.
// Demonstrates the requirement: "The DDS frequency that is set must be within
// the frequency resolution (fs/N) of the index estimated by the FFT core."
//
// Builds against the Xilinx standalone BSP (xil_io.h, xil_printf, sleep).
// Drop into a Vitis Empty Application's src/ folder.
//
// PS-visible register map (AXI-Lite, base 0x43C00000):
//   0x00 RW   DDS_PINC
//   0x04 RO+W1C(bit8) PEAK_STATUS  [7:0]=peak_index, [8]=valid_sticky
//   0x08 RO   PEAK_VALUE

#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdint.h>
#include <assert.h>

#ifndef PART4_BASEADDR
#define PART4_BASEADDR     0x43C00000u
#endif

#define DDS_PINC           (PART4_BASEADDR + 0x00u)
#define PEAK_STATUS        (PART4_BASEADDR + 0x04u)
#define PEAK_VALUE         (PART4_BASEADDR + 0x08u)

#define PEAK_INDEX_MASK    0x000000FFu
#define PEAK_VALID_STICKY  0x00000100u

#define FS_HZ              200000000.0
#define FFT_N              256
#define FREQ_RESOLUTION    (FS_HZ / (double)FFT_N)   /* 781250 Hz */

#define POLL_TIMEOUT       1000000u

/* ---- Tiny helpers ---- */

static inline uint32_t freq_to_pinc(double f_hz)
{
    /* PINC = round((f / fs) * 2^32) */
    double raw = (f_hz / FS_HZ) * 4294967296.0;
    if (raw < 0.0)             raw = 0.0;
    if (raw > 4294967295.0)    raw = 4294967295.0;
    return (uint32_t)(raw + 0.5);
}

static inline double bin_to_hz(uint8_t bin)
{
    /* signed bin: top half is negative frequency */
    int signed_bin = (bin < (FFT_N / 2)) ? (int)bin : ((int)bin - FFT_N);
    return (double)signed_bin * FS_HZ / (double)FFT_N;
}

static inline double dabs(double x) { return x < 0.0 ? -x : x; }

static void set_dds_frequency(double f_hz)
{
    Xil_Out32(DDS_PINC, freq_to_pinc(f_hz));
}

static uint8_t read_peak_index_blocking(void)
{
    /* W1C clear sticky, then poll until next FFT frame sets it again */
    Xil_Out32(PEAK_STATUS, PEAK_VALID_STICKY);
    for (uint32_t i = 0; i < POLL_TIMEOUT; i++) {
        uint32_t s = Xil_In32(PEAK_STATUS);
        if (s & PEAK_VALID_STICKY)
            return (uint8_t)(s & PEAK_INDEX_MASK);
    }
    /* Timeout is a hard fault -> assertion */
    assert(!"PEAK_STATUS sticky valid did not arrive");
    return 0;
}

/* ---- The assertion the spec asks for ---- */

static void assert_within_one_bin(double target_hz)
{
    set_dds_frequency(target_hz);
    usleep(10000);                            /* let pipeline settle */

    uint8_t  bin       = read_peak_index_blocking();
    double   estimated = bin_to_hz(bin);
    double   error     = dabs(estimated - target_hz);

    xil_printf("target=%u kHz  bin=%u  estimated=%s%u kHz  error=%u kHz\r\n",
               (unsigned)(target_hz / 1000.0),
               (unsigned)bin,
               (estimated < 0.0) ? "-" : "",
               (unsigned)(dabs(estimated) / 1000.0),
               (unsigned)(error / 1000.0));

    /* The actual specification requirement: */
    assert(error <= FREQ_RESOLUTION);
}

/* ---- Test driver ---- */

int main(void)
{
    static const double FREQS[] = { 10.0e6, 12.5e6, 25.0e6, 50.0e6 };
    enum { NUM_FREQS = sizeof(FREQS) / sizeof(FREQS[0]) };

    xil_printf("\r\nPart 4 DDS/FFT assertion test\r\n");
    xil_printf("Base 0x%08x, fs=200MHz, N=256, resolution=%u kHz\r\n\r\n",
               (unsigned int)PART4_BASEADDR,
               (unsigned int)(FREQ_RESOLUTION / 1000.0));

    for (unsigned i = 0; i < NUM_FREQS; i++) {
        assert_within_one_bin(FREQS[i]);
    }

    xil_printf("\r\nAll %u DDS frequencies verified within one FFT bin.\r\n",
               (unsigned)NUM_FREQS);
    xil_printf("PASS\r\n");

    while (1) { /* park */ }
    return 0;
}
