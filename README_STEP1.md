# FPGA FFT Project - Step 1

Bu paket ilk adım içindir:

- `python/reference_fft.py`: 12.5 MHz ve 10 MHz kompleks sinyalleri üretir, FFT peak bin değerlerini hesaplar.
- `python/generate_hamming_mem.py`: Q1.15 Hamming coefficient dosyasını üretir.
- `mem/tone_12p5MHz.mem`: 256 sample, 12-bit signed real/imag.
- `mem/tone_10MHz.mem`: 256 sample, 12-bit signed real/imag.
- `mem/hamming_q1_15.mem`: 256 adet 16-bit Q1.15 Hamming coefficient.

Beklenen sonuçlar:
- 12.5 MHz teorik bin = 16.0, peak bin = 16
- 10 MHz teorik bin = 12.8, peak bin ≈ 13
