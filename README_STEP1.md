# FPGA FFT Project - Step 1

Bu adimda Python referans akisi ve test verileri hazirlanir. Hedef, 200 MHz
ornekleme frekansinda 256 noktalik kompleks FFT icin iki tonu dogrulamaktir.

## Files

- `python/reference_fft.py`
  - 12.5 MHz ve 10 MHz kompleks sinyalleri uretir.
  - Teorik FFT binlerini ve beklenen peak bin degerlerini hesaplar.
- `python/gen_hamming.py`
  - Part 2 icin `mem/hamming_256.mem` Hamming pencere katsayilarini uretir.
- `mem/tone_12p5MHz_re.mem`
  - 12.5 MHz tonun 256 adet 12-bit signed real sample verisi.
- `mem/tone_12p5MHz_im.mem`
  - 12.5 MHz tonun 256 adet 12-bit signed imaginary sample verisi.
- `mem/tone_10MHz_re.mem`
  - 10 MHz tonun 256 adet 12-bit signed real sample verisi.
- `mem/tone_10MHz_im.mem`
  - 10 MHz tonun 256 adet 12-bit signed imaginary sample verisi.
- `mem/hamming_256.mem`
  - Part 2 icin 256 adet 16-bit Q1.15 Hamming katsayisi.

## Expected Results

```text
fs = 200 MHz
N  = 256
bin_spacing = fs / N = 781.25 kHz
```

- 12.5 MHz teorik bin = 16.0, peak bin = 16
- 10 MHz teorik bin = 12.8, peak bin = 13

12.5 MHz tonu tam olarak FFT bin 16'ya denk gelir. 10 MHz tonu bin 12 ile
13 arasinda kaldigi icin enerjisi komsu binlere yayilir; en yuksek bin yine
13 olarak beklenir.
