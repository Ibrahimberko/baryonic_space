# Vitis'te Yeni Bir C Uygulaması Açma — Adım Adım Rehber

Bu rehber, Vitis 2024.2 Unified IDE'de mevcut platform üzerine yeni bir
C uygulaması nasıl oluşturulur, derlenir ve Zybo Z7-20'de RealTerm'den
çıktısı nasıl izlenir gösterir.

---

## Önkoşullar (Bir Kerelik)

Bunlar zaten yapıldıysa atla:

- Vivado bitstream + XSA güncel:
  `part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.xsa`
- Platform component build edilmiş:
  `fft_pl_ps_platform` → "Platform Build Finished successfully" görmüş olmalı
- JP5 = JTAG, JP6 = USB, kart açık (SW4 = ON)
- Tek micro-USB kablo PROG/UART portuna takılı
- CP210x VCP sürücüsü kurulu (Aygıt Yöneticisi → Ports altında "Silicon Labs CP210x USB to UART Bridge (COMxx)" görünüyor; **COM numarasını not et**)

---

## 1. Yeni Application Component Oluştur

1. Vitis sol panelde **Vitis Components** sekmesine geç.
2. Üstteki mavi **+ (artı)** butonuna tıkla → **Create Application Component**.

   *(Alternatif: File menüsü → New Component → Application Component)*

3. **Name:** uygulamayı tanımlayan bir isim ver, örn:
   - `dds_fft_assert_app`
   - `dds_fft_test_app`
4. **Component location:** workspace içinde default kalsın → **Next**.
5. **Platform** seçimi:
   - **Select a platform from repository** sekmesinde `fft_pl_ps_platform` görünür
   - Onu seç → **Next**
6. **Domain** seçimi:
   - Domain: `standalone_ps7_cortexa9_0` (otomatik gelir)
   - **Next**
7. **Templates** sayfası:
   - **Empty Application (C)** seç (Hello World veya diğerleri değil)
   - **Finish**
8. Application component açılır; ortada özet sayfa görürsün, sol panelde
   ağacı genişlet:

   ```
   dds_fft_assert_app
   └── src      (boş)
   ```

---

## 2. C Kaynak Dosyasını `src/` Klasörüne Ekle

İki yöntem var, hangisi kolaysa onu kullan:

### Yöntem A: Drag & Drop (en hızlı)

1. Windows Explorer aç, kaynak dosyayı bul:
   `C:\Users\USER\Documents\baryonic_space\baryonic_space-main\software\part4\dds_fft_assert_test.c`
2. Dosyayı tutup Vitis'in sol panelindeki app'in `src/` klasörüne sürükle-bırak.
3. "Copy files into project" sorulursa **Yes / OK** de.

### Yöntem B: Sağ Tık → Import

1. Vitis'te `src/` klasörüne sağ tık → **Import → Import Files**.
2. Browse → ilgili `.c` dosyasını seç → OK.

### Yöntem C: Kopyala-Yapıştır

1. Explorer'da `.c` dosyasını **Ctrl+C**.
2. Vitis'te `src/` klasörünü seç, **Ctrl+V**.

Hangisini yaparsan yap, sonuç:

```
dds_fft_assert_app
└── src
    └── dds_fft_assert_test.c   ← bu görünmeli
```

> **NOT:** Vitis dosyayı KOPYALAR. Yani Vitis'in kullandığı kopya
> `C:\Users\USER\vitis\dds_fft_assert_app\src\` altındadır. Repo'daki
> `software/part4/`'teki orijinal dosya bağımsız kalır. Sonradan
> değişiklik yaparsan **iki yerde de güncellemen gerekir** (veya birini
> diğerine "Linked Resource" yap).

---

## 3. App'i Build Et

1. Sol panelde app component'i seç (üst seviye, `dds_fft_assert_app`).
2. Sol üstteki **çekiç ikonu (Build)** tıkla — veya menüden Build → Build.
3. Konsolda derleme satırlarını gör. Hata yoksa son satırlardan biri:
   ```
   Finished building target: dds_fft_assert_app.elf
   ```
4. Sol panelde `Debug/` klasörü altında `dds_fft_assert_app.elf` üretilmiş
   olmalı (sağ alt detay panelinde dosya tarihi şimdi olmalı).

> **Build hatası varsa:** Konsolda kırmızı satıra bak. En sık çıkanlar:
> `xil_io.h` bulunamadı (platform doğru build olmamış demektir; platform'a
> dön, build et). `assert undefined reference` (newlib lazım — varsayılan
> Empty Application'da hazır geliyor, problem olmamalı).

---

## 4. RealTerm'i Aç ve Hazırla

App'i çalıştırmadan **önce** terminal hazır olmalı, ilk satırlar kaçmasın.

1. RealTerm'i aç.
2. **Port** sekmesinde:
   - **Baud:** `115200`
   - **Port:** Aygıt Yöneticisi'nde gördüğün COM numarası (örn. `7` yazarsan COM7)
   - **Parity:** None
   - **Data Bits:** 8
   - **Stop Bits:** 1
   - **Hardware Flow Control:** None
   - **Software Flow Control:** None
   - **Open** butonuna bas → port mavi yeşilimsi yanmalı
3. **Display** sekmesinde:
   - **Display As:** **Ascii** (Hex DEĞİL)
   - **Half Duplex:** unchecked
   - **Newline Mode:** unchecked
4. RealTerm artık dinlemede, üst panelde "Connected" yazar.

> **Önemli:** RealTerm port'u kilitler. Vitis Serial Terminal aynı anda
> bağlanamaz. Sadece RealTerm açık kalsın.

---

## 5. Karta Programla — Run on Hardware

1. Vitis'e dön.
2. Sol panelde app component üstüne sağ tık → **Run** → **Run on Hardware**.

   *(Veya üst toolbar'daki yeşil ▶ ikonuna tıkla, "Run on Hardware" seç.)*

3. Vitis sırayla şunu yapar (alt konsolda izle):
   - JTAG cable bağlantısı kurulur
   - PL'ye `system_wrapper.bit` indirilir → kartta **DONE LED** yanar
   - PS init (DDR, MIO, FCLK) yüklenir
   - `dds_fft_assert_app.elf` DDR'a yüklenir
   - A9 core entry point'ten başlatılır
4. Birkaç saniye içinde RealTerm'de çıktı akmaya başlar.

---

## 6. Beklenen Çıktıyı Doğrula

`dds_fft_assert_test.c` için RealTerm'de görünmesi gereken:

```
Part 4 DDS/FFT assertion test
Base 0x43c00000, fs=200MHz, N=256, resolution=781 kHz

target=10000 kHz  bin=13  estimated=10156 kHz  error=156 kHz
target=12500 kHz  bin=16  estimated=12500 kHz  error=0 kHz
target=25000 kHz  bin=32  estimated=25000 kHz  error=0 kHz
target=50000 kHz  bin=64  estimated=50000 kHz  error=0 kHz

All 4 DDS frequencies verified within one FFT bin.
PASS
```

`vitis_baremetal_dds_fft_test.c` için:

```
Part 4 Vitis bare-metal DDS/FFT test
Base address: 0x43c00000
Frequency resolution: 781.25 kHz

Target PINC=0x0CCCCCCD, peak_idx=13, peak_value=1144900
    target=10000 kHz, estimated=10156 kHz, error=156 kHz
PASS: test 0 within one FFT bin
... (4 test)
All Part 4 bare-metal tests PASSED
```

---

## 7. Yeniden Çalıştırma / Düzeltme Döngüsü

C kodunu değiştirdiysen:

1. Vitis editöründe `Ctrl+S` ile kaydet.
2. **Build** (çekiç) — sadece app'i, platform'u değil.
3. **Run on Hardware** — bitstream zaten PL'de, yalnız ELF tekrar yüklenir
   (daha hızlı, ~3 saniye).

Bitstream'i (Vivado tarafını) değiştirdiysen:

1. Vivado: yeni `system_wrapper.bit` + `xsa` üret
2. Vitis: Platform component sağ tık → **Update Hardware Specification**
   → yeni XSA göster → **Build Platform**
3. App component → **Build**
4. **Run on Hardware**

---

## Sorun Giderme

| Belirti | Olası neden | Çözüm |
| --- | --- | --- |
| "Cannot connect to JTAG cable" | JP5 JTAG'da değil | JP5 → JTAG, kartı reboot |
| "No cable detected" | Cable driver yok | `<Vivado>/data/xicom/cable_drivers/.../install_drivers.bat` yönetici olarak çalıştır |
| Run başarılı ama RealTerm boş | CP210x driver yok / yanlış COM / yanlış baud | Aygıt Yöneticisi'nden COM doğrula, 115200 8N1 |
| RealTerm karakterler bozuk | Baud yanlış (örn. 9600) veya Display=Hex | Baud 115200, Display=Ascii |
| Build error: undefined reference | Platform doğru build olmamış | Platform component'e dön, Build et |
| `assert` failed satırı görünüyor | Test gerçekten fail oldu | C kodu, donanım ya da bitstream eskimiş — debug |
| Aynı çıktı tekrar gelmiyor | App `while(1)` ile bitiyor, ARM sonsuz döngüde | Yeni Run on Hardware ya da kart reboot |

---

## Hızlı Özet — 7 Tıkla Çıktı

1. Vitis → + → Create Application Component → fft_pl_ps_platform → standalone → Empty App
2. `.c` dosyasını `src/`'e drag-drop
3. Build (çekiç)
4. RealTerm aç, COM seç, 115200, Open
5. Vitis → app sağ tık → Run on Hardware
6. RealTerm'de çıktıyı oku
7. Değişiklik varsa Ctrl+S → Build → Run on Hardware
