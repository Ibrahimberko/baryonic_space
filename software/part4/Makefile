CC ?= gcc
CFLAGS ?= -O2 -Wall -Wextra
LDLIBS ?= -lm

all: dds_fft_test

dds_fft_test: dds_fft_test.c
	$(CC) $(CFLAGS) -o $@ $< $(LDLIBS)

clean:
	rm -f dds_fft_test

.PHONY: all clean
