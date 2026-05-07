# Part 4 — Zybo Z7-20 Bring-Up Checklist

Bu doküman, `part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xsa` ve
`software/part4/vitis_baremetal_dds_fft_test.c` ile Zybo Z7-20 üzerinde
PL+PS testini koşturmak için adım adım kontrol listesidir.

Hedef sonuç: UART'ta `All Part 4 bare-metal tests PASSED` satırını görmek.

---

## 0. Ön Koşullar

| Bileşen | Beklenen |
| --- | --- |
| Vivado | 2024.2 (XSA bu sürümle üretilmiştir) |
| Vitis | 2024.2 Unified IDE |
| Cable drivers | `<Vivado>/data/xicom/cable_drivers/nt64/install_drivers/install_drivers.bat` (yönetici olarak bir kez çalıştır) |
| UART sürücüsü | Silicon Labs **CP210x** USB-to-UART (Aygıt Yöneticisi'nde COM portu görünmeli) |
| XSA | `part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xsa` mevcut |
| Bitstream | `part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.runs/impl_1/system_wrapper.bit` mevcut |
| Test C dosyası | `software/part4/vitis_baremetal_dds_fft_test.c` mevcut |

---

## 1. Donanım — Kartı Hazırlama

1. Kart **kapalı** (SW4 = OFF) olsun.
2. **JP5 (boot mode)** → **JTAG** konumu. (QSPI veya SD seçili kalırsa Vitis JTAG üzerinden indirme yapamaz.)
3. **JP6 (power source)** → **USB** konumu. (Harici güç kullanıyorsan WALL pozisyonu, ama bu test için USB yeterli.)
4. Micro-USB kabloyu **PROG/UART** portuna tak (HDMI değil, USB OTG değil — etiketli olan).
5. PC tarafında:
   - Aygıt Yöneticisi → **Ports (COM & LPT)** altında "Silicon Labs CP210x USB to UART Bridge (COMxx)" görünmeli.
   - Görünmüyorsa CP210x VCP sürücüsünü Silicon Labs sitesinden kurup yeniden tak.
6. SW4 = ON. Kırmızı PWR LED yanmalı; DONE LED **sönük** kalır (henüz bitstream yok, normal).

---

## 2. Vitis 2024.2 — Workspace ve Platform

1. Vitis IDE'yi aç → bir workspace klasörü seç (XSA klasörünün dışında bir yer öneriyorum, örn. `C:\Vitis_workspaces\baryonic_part4`).
2. Sol panel **Examples / Open Component** kısmından değil, **Create Platform Component** seç.
   - Component name: `fft_pl_ps_platform`
   - Hardware Design (XSA): `…/part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xsa`
   - Operating system: **standalone**
   - Processor: **ps7_cortexa9_0**
   - Finish.
3. Açılan platform sayfasında **Build** (çekiç ikonu). Konsolda hata yoksa platform hazır (~1–2 dk).

---

## 3. Vitis — Application Component

1. **Create Application Component**:
   - Component name: `dds_fft_test_app`
   - Platform: az önce build ettiğin `fft_pl_ps_platform`
   - Domain: `standalone_ps7_cortexa9_0`
   - Template: **Empty Application (C)**
   - Finish.
2. App `src/` klasörünü açıp şunu yap:
   - `software/part4/vitis_baremetal_dds_fft_test.c` dosyasını **kopyala → src/** içine yapıştır
   - (Alternatif: sağ tık → Import Sources → file system → ilgili dosyayı seç)
3. App'i build et (çekiç). Konsolda `dds_fft_test_app.elf` üretildiğini görmelisin.

> Not: `PART4_BASEADDR` C dosyasında `0x43C00000` olarak hard-coded. Block design scripti de bu adresi kullanıyor. Değiştirmen gerekmemeli; gerekirse Properties → C/C++ Build → Settings → Symbols altına `PART4_BASEADDR=0x43C00000` ekleyebilirsin.

---

## 4. UART Terminali

İndirmeden **önce** terminali aç ki ilk satırları kaçırmayasın.

- Vitis içinden: **Vitis Serial Terminal** view (Window → Show View → Serial Terminal).
  - Connection → Serial port → COM portunu seç → **Baud 115200**, Data 8, Parity none, Stop 1, Flow control none.
- Veya PuTTY: Serial, COMxx, 115200, 8N1, flow control = none.

---

## 5. Karta İndirme ve Çalıştırma

1. Vitis'te app component'i aç → **Run** menüsünden **Run on Hardware** (Single Application Debug değil, doğrudan Run).
2. Vitis sırasıyla şunu yapar:
   - PL'ye `system_wrapper.bit` indirir → DONE LED yanar.
   - PS'e `ps7_init` çalıştırır (DDR, MIO, FCLK kurulumu).
   - `dds_fft_test_app.elf` dosyasını DDR'a yükler.
   - A9 core'una entry point'ten zıplama yaptırır.
3. UART'ta beklenen çıktı:

```text
Part 4 Vitis bare-metal DDS/FFT test
Base address: 0x43c00000
Frequency resolution: 781.25 kHz

Target PINC=0x0ccccccd, peak_idx=13, peak_value=...
PASS: test 0 within one FFT bin
Target PINC=0x10000000, peak_idx=16, peak_value=...
PASS: test 1 within one FFT bin
Target PINC=0x20000000, peak_idx=32, peak_value=...
PASS: test 2 within one FFT bin
Target PINC=0x40000000, peak_idx=64, peak_value=...
PASS: test 3 within one FFT bin

All Part 4 bare-metal tests PASSED
```

Beklenen `peak_idx` değerleri:
- 10.0 MHz → bin 13 (12.8 ideal, sızıntıdan dolayı 13)
- 12.5 MHz → bin 16 (tam)
- 25.0 MHz → bin 32 (tam)
- 50.0 MHz → bin 64 (tam)

---

## 6. Sorun Giderme

| Belirti | Olası neden | Çözüm |
| --- | --- | --- |
| Vitis "Cannot connect to target" | JP5 JTAG'da değil | JP5 → JTAG, kartı resetle |
| Vitis "No cable detected" | Cable driver yok | `install_drivers.bat`'ı yönetici olarak çalıştır, USB'yi tekrar tak |
| UART boş, ama Run başarılı | CP210x sürücüsü yok / yanlış COM port / baud farklı | CP210x kur, doğru COM, 115200 8N1 |
| `FAIL: peak_valid timeout` | DDS Compiler config TREADY beklemede kalmış | DDS IP `Has_TREADY = false` ile üretildi mi kontrol et (BD scriptinde öyle ayarlı) |
| `peak_idx >= 128` (örn. 243) | DDS lane swap — sine/cosine yanlış paketlenmiş | `rtl/part4/fft_pl_ps_top.v` içinde `dds_re` ve `dds_im` atamalarındaki `dds_tdata[DDS_SAMPLE_W-1:0]` ile `dds_tdata[DDS_LANE_W +: DDS_SAMPLE_W]` parçalarını yer değiştir → re-synth → re-impl → write_bitstream → write_hw_platform (XSA) → Vitis'te platform'u **Update Hardware Specification** yap → app'i tekrar build & run |
| `FAIL: target test N outside FFT resolution` | Yukarıdaki swap problemi veya saatin gerçekten 200 MHz olmaması | Önce swap'a bak. Yoksa Vivado HW Manager'da ILA'yı bağlayıp `dds_pinc_dbg` ve `peak_index_dbg` sinyallerini canlı izle |
| DONE LED yanmıyor | Bitstream indirme başarısız | Vitis konsolunda hata satırı; çoğu zaman JTAG kablo kontağı veya başka bir Vivado oturumu kabloyu tutuyor |

---

## 7. (Opsiyonel) Linux /dev/mem Akışı

PetaLinux/Ubuntu ile çalışacaksan `software/part4/dds_fft_test.c` dosyasını
hedef üstünde derle:

```sh
gcc -O2 -Wall -Wextra -o dds_fft_test dds_fft_test.c -lm
sudo ./dds_fft_test 0x43c00000
```

`mmap` ile aynı register haritasını kullanır; Linux başlatılmış bir Zynq imajı
gerektirir, bu testin standart akışı bare-metal'dir.

---

## 8. Hızlı Sağlık Testi (Tek Satır)

Tüm donanım çalışıyorsa şu sırayla:

1. JP5 = JTAG, JP6 = USB, kabloyu tak, SW4 = ON → kırmızı PWR LED.
2. Vitis → Run on Hardware → DONE LED yanar.
3. UART (115200) → 4 PASS satırı + final PASSED satırı.

Bu üçü olduysa Part 4 build kart üzerinde başarılı demektir.
