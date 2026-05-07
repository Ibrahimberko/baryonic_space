#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

#ifndef BASE_ADDR
#define BASE_ADDR 0x43C00000u
#endif

#ifndef MAP_SIZE
#define MAP_SIZE 4096u
#endif

#define DDS_PINC_OFFSET    0x00u
#define PEAK_STATUS_OFFSET 0x04u
#define PEAK_VALUE_OFFSET  0x08u

#define PEAK_INDEX_MASK    0x000000ffu
#define PEAK_VALID_STICKY  0x00000100u

#define FS_HZ              200000000.0
#define FFT_N              256
#define PHASE_WIDTH        32
#define POLL_TIMEOUT_US    1000000

static volatile uint32_t *axi_base;

static inline void write_reg(uint32_t offset, uint32_t value)
{
    axi_base[offset / 4u] = value;
}

static inline uint32_t read_reg(uint32_t offset)
{
    return axi_base[offset / 4u];
}

static uint32_t pinc_from_frequency(double freq_hz)
{
    long double scale = ldexpl(1.0L, PHASE_WIDTH);
    long double raw = ((long double)freq_hz / (long double)FS_HZ) * scale;

    if (raw < 0.0L)
        raw = 0.0L;
    if (raw > 4294967295.0L)
        raw = 4294967295.0L;

    return (uint32_t)llroundl(raw);
}

static void set_dds_frequency(double freq_hz)
{
    write_reg(DDS_PINC_OFFSET, pinc_from_frequency(freq_hz));
}

static void clear_peak_valid(void)
{
    write_reg(PEAK_STATUS_OFFSET, PEAK_VALID_STICKY);
}

static uint32_t wait_for_peak_status(void)
{
    for (int waited_us = 0; waited_us < POLL_TIMEOUT_US; waited_us += 1000) {
        uint32_t status = read_reg(PEAK_STATUS_OFFSET);
        if (status & PEAK_VALID_STICKY)
            return status;
        usleep(1000);
    }

    fprintf(stderr, "Timed out waiting for peak_valid_sticky\n");
    exit(EXIT_FAILURE);
}

static double index_to_frequency(uint8_t index)
{
    int signed_index = (index < FFT_N / 2) ? index : (int)index - FFT_N;
    return (double)signed_index * FS_HZ / (double)FFT_N;
}

int main(int argc, char **argv)
{
    uint32_t base_addr = BASE_ADDR;

    if (argc > 1)
        base_addr = (uint32_t)strtoul(argv[1], NULL, 0);

    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        fprintf(stderr, "open(/dev/mem) failed: %s\n", strerror(errno));
        return EXIT_FAILURE;
    }

    axi_base = (volatile uint32_t *)mmap(NULL, MAP_SIZE,
                                         PROT_READ | PROT_WRITE,
                                         MAP_SHARED, fd, base_addr);
    if (axi_base == MAP_FAILED) {
        fprintf(stderr, "mmap(0x%08x) failed: %s\n", base_addr, strerror(errno));
        close(fd);
        return EXIT_FAILURE;
    }

    const double test_freqs[] = {10e6, 12.5e6, 25e6, 50e6};
    const double freq_resolution = FS_HZ / (double)FFT_N;

    printf("AXI base: 0x%08x\n", base_addr);
    printf("fs/N: %.2f kHz\n\n", freq_resolution / 1e3);

    for (unsigned i = 0; i < sizeof(test_freqs) / sizeof(test_freqs[0]); i++) {
        double target_freq = test_freqs[i];

        set_dds_frequency(target_freq);

        // Let the DDS config and FFT pipeline flush, then wait for a fresh peak.
        usleep(1000);
        clear_peak_valid();
        uint32_t status = wait_for_peak_status();

        uint8_t peak_idx = (uint8_t)(status & PEAK_INDEX_MASK);
        double estimated_freq = index_to_frequency(peak_idx);
        uint32_t peak_value = read_reg(PEAK_VALUE_OFFSET);
        double error = fabs(estimated_freq - target_freq);

        printf("Target: %7.3f MHz | PINC: 0x%08x | Peak index: %3u | "
               "Estimated: %7.3f MHz | |X|^2: %u\n",
               target_freq / 1e6,
               pinc_from_frequency(target_freq),
               peak_idx,
               estimated_freq / 1e6,
               peak_value);

        assert(error <= freq_resolution);
        printf("PASS: error = %.2f kHz\n\n", error / 1e3);
    }

    printf("All Part 4 PS/PL DDS-FFT tests PASSED.\n");

    munmap((void *)axi_base, MAP_SIZE);
    close(fd);
    return EXIT_SUCCESS;
}
