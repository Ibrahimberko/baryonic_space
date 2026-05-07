#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdint.h>

#ifndef PART4_BASEADDR
#define PART4_BASEADDR 0x43C00000u
#endif

#define DDS_PINC_OFFSET     0x00u
#define PEAK_STATUS_OFFSET  0x04u
#define PEAK_VALUE_OFFSET   0x08u

#define PEAK_INDEX_MASK     0x000000ffu
#define PEAK_VALID_STICKY   0x00000100u

#define FS_HZ               200000000.0
#define FFT_N               256
#define PHASE_WIDTH         32
#define POLL_TIMEOUT        1000000u

static uint32_t freq_to_pinc(double freq_hz)
{
    double scale = 4294967296.0; /* 2^32 */
    double raw = (freq_hz / FS_HZ) * scale;

    if (raw < 0.0)
        raw = 0.0;
    if (raw > 4294967295.0)
        raw = 4294967295.0;

    return (uint32_t)(raw + 0.5);
}

static void write_reg(uint32_t offset, uint32_t value)
{
    Xil_Out32(PART4_BASEADDR + offset, value);
}

static uint32_t read_reg(uint32_t offset)
{
    return Xil_In32(PART4_BASEADDR + offset);
}

static void set_dds_frequency(double freq_hz)
{
    write_reg(DDS_PINC_OFFSET, freq_to_pinc(freq_hz));
}

static void clear_peak_valid(void)
{
    write_reg(PEAK_STATUS_OFFSET, PEAK_VALID_STICKY);
}

static uint32_t wait_for_peak_status(void)
{
    for (uint32_t i = 0; i < POLL_TIMEOUT; i++) {
        uint32_t status = read_reg(PEAK_STATUS_OFFSET);
        if ((status & PEAK_VALID_STICKY) != 0u)
            return status;
    }

    xil_printf("FAIL: peak_valid timeout\r\n");
    while (1) {
    }
}

static double index_to_frequency(uint8_t index)
{
    int signed_index = (index < (FFT_N / 2)) ? index : ((int)index - FFT_N);
    return ((double)signed_index * FS_HZ) / (double)FFT_N;
}

static double abs_double(double x)
{
    return (x < 0.0) ? -x : x;
}

int main(void)
{
    const double test_freqs[] = {10e6, 12.5e6, 25e6, 50e6};
    const double freq_resolution = FS_HZ / (double)FFT_N;
    const unsigned num_tests = sizeof(test_freqs) / sizeof(test_freqs[0]);

    xil_printf("\r\nPart 4 Vitis bare-metal DDS/FFT test\r\n");
    xil_printf("Base address: 0x%08x\r\n", (unsigned int)PART4_BASEADDR);
    xil_printf("Frequency resolution: 781.25 kHz\r\n\r\n");

    for (unsigned i = 0; i < num_tests; i++) {
        double target = test_freqs[i];

        set_dds_frequency(target);
        usleep(10000);

        clear_peak_valid();
        uint32_t status = wait_for_peak_status();
        uint8_t peak_idx = (uint8_t)(status & PEAK_INDEX_MASK);
        uint32_t peak_value = read_reg(PEAK_VALUE_OFFSET);

        double estimated = index_to_frequency(peak_idx);
        double error = abs_double(estimated - target);

        // xil_printf is NOT a full printf; it does not handle %lx/%lu/%lld
        // correctly. Use plain %x and %u with (unsigned int) casts.
        // Print integer kHz instead of double for the same reason.
        unsigned int target_khz    = (unsigned int)(target / 1000.0);
        unsigned int estimated_khz = (estimated < 0.0)
            ? (unsigned int)((-estimated) / 1000.0)
            : (unsigned int)( estimated  / 1000.0);
        unsigned int error_khz     = (unsigned int)(error / 1000.0);

        xil_printf("Target PINC=0x%08x, peak_idx=%u, peak_value=%u\r\n",
                   (unsigned int)freq_to_pinc(target),
                   (unsigned int)peak_idx,
                   (unsigned int)peak_value);
        xil_printf("    target=%u kHz, estimated=%s%u kHz, error=%u kHz\r\n",
                   target_khz,
                   (estimated < 0.0) ? "-" : "",
                   estimated_khz,
                   error_khz);

        if (error > freq_resolution) {
            xil_printf("FAIL: target test %u outside FFT resolution\r\n", i);
            while (1) {
            }
        }

        xil_printf("PASS: test %u within one FFT bin\r\n", i);
    }

    xil_printf("\r\nAll Part 4 bare-metal tests PASSED\r\n");

    while (1) {
    }
}
