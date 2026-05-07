# FPGA FFT Project - Step 2

Bu adim Part 1 RTL tasarimini ve testbench akisini aciklar. Part 1, giris
kompleks sample verisini zaman alaninda pencere uygulamadan dogrudan Xilinx
FFT IP (`xfft_0`) bloguna yollar.

## Files

- `rtl/part1/fft_naive_top.v`
  - `xfft_0` IP'sini sarar.
  - Reset sonrasi FFT konfigurasyon kelimesini gonderir.
  - Giris sample verisini AXI4-Stream formatinda FFT IP'ye aktarir.
  - FFT cikisindan `abs(FFT)^2` hesaplatir ve peak detector'a yollar.
- `rtl/abs_sq.v`
  - `real^2 + imag^2` degerini hesaplar.
- `rtl/peak_detector.v`
  - Bir 256-sample FFT frame icinde en buyuk `abs_sq` degerini ve bin
    indeksini bulur.
- `tb/part1/tb_fft_naive.sv`
  - 200 MHz clock uretir.
  - `mem/tone_12p5MHz_re.mem`, `mem/tone_12p5MHz_im.mem`,
    `mem/tone_10MHz_re.mem`, `mem/tone_10MHz_im.mem` dosyalarini okur.
  - Iki FFT frame gonderir.
  - Beklenen peak bin degerlerini kontrol eder: 16 ve 13.
- `scripts/create_part1_vivado_project.tcl`
  - Part 1 Vivado projesini sifirdan olusturur, `xfft_0` IP'sini uretir ve
    simulasyonu calistirir.
- `scripts/add_part1_sources.tcl`
  - Var olan bir Vivado projesine Part 1 kaynaklarini eklemek icin yardimci
    script.

## Vivado Usage

Yeni Part 1 projesini olusturmak ve simulasyonu calistirmak icin Vivado Tcl
Console'da:

```tcl
source C:/Users/USER/Documents/baryonic_space/baryonic_space-main/scripts/create_part1_vivado_project.tcl
```

Script repo kokunu kendi konumundan bulur. XPR icindeki RTL/testbench
kaynaklari relative path kullanir. Tone `.mem` dosyalari sim_1 fileset'ine
eklenir ve Vivado tarafindan XSim run dizinine kopyalanir; simulasyon
`MEM_DIR=.` ile bu kopyalari okur. Bu yuzden klasor yapisi korunursa proje
baska bir bilgisayarda da acilabilir.

## Expected Simulation Messages

```text
Frame 0 (12.5 MHz): peak bin=16
Frame 1 (10.0 MHz): peak bin=13
tb_fft_naive: PASS
```

Ek kontroller:

- Toplam spektral enerji iki frame arasinda yakin olmalidir.
- Peak dominance orani minimum esigi gecmelidir.
- Giris ve cikis AXI frame uzunluklari 256 sample olmalidir.

## Important Notes

FFT IP ayarlari:

```text
Transform Length   = 256
Input Data Width   = 12
Data Format        = Fixed Point
Output Ordering    = Natural Order
XK_INDEX           = enabled
```

AXI data packing:

```text
tdata[11:0]  = real
tdata[27:16] = imag
```

Varsayilan FFT konfigurasyon kelimesi:

```text
16'h0155
```

Bu konfigurasyon forward FFT icindir ve 256-point scaled FFT icin toplam
1/256 olcekleme saglayan `SCALE_SCH = 8'b10101010` degerini kullanir.
