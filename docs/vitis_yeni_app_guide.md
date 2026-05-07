# Vitis'te Yeni Bir C Uygulaması Açma — Adım Adım Rehber

Bu rehber, Vitis 2024.2 Unified IDE'de mevcut platform üzerine yeni bir
C uygulaması nasıl oluşturulur, derlenir ve Zybo Z7-20'de RealTerm'den
çıktısı nasıl izlenir gösterir.


Karta bağladığın varsayımıyla, Vitis 2024.2'de sıfırdan başlayan tam adım listesi:

## 0. Önkoşul — Donanım Hazır mı?

**Önce bunu yap, atlama:**

1. Kart kapalıyken: **JP5 → JTAG**, **JP6 → USB**.
2. Micro-USB kabloyu **PROG/UART** portuna tak (HDMI/USB-OTG değil).
3. **SW4 = ON**. Kırmızı PWR LED yanmalı, DONE LED **sönük**.
4. PC'de **Aygıt Yöneticisi → Ports (COM & LPT)** altında "Silicon Labs CP210x USB to UART Bridge (COMxx)" görünmeli. **COM numarasını not et** (örn. COM7).
   - Görünmüyorsa: Silicon Labs CP210x VCP driver'ı kur, USB'yi tekrar tak.
5. Vivado Cable Drivers kurulu mu test et: Vivado **Hardware Manager → Open Target** menüsünde "Auto Connect" yapıp Zybo'yu görüyorsa kurulu. Görmüyorsa `<Vivado>\data\xicom\cable_drivers\nt64\install_drivers\install_drivers.bat`'ı **yönetici** olarak çalıştır.

## 1. Vitis'i Aç ve Workspace Seç

6. **Start menüsü → Vitis IDE 2024.2**'i aç.
7. İlk açılışta workspace soracak. **XSA klasörünün dışında** bir yer ver:
   ```
   C:\Vitis_workspaces\baryonic_part4
   ```
   (Klasör yoksa Vitis oluşturur.) **Launch** tıkla.
8. Welcome ekranı kapat (sol üstte X).

## 2. Platform Component Oluştur

9. Sol panelde **Vitis Components** sekmesine geç.
10. Mavi **+ → Create Platform Component** tıkla.

    *(Veya File → New Component → Platform.)*
11. Açılan wizard:
    - **Name:** `fft_pl_ps_platform`
    - **Component location:** workspace içinde default kalsın.
    - **Next**.
12. **Hardware Design** sayfası:
    - **Hardware Design (XSA):** **Browse** → şunu seç:
      ```
      C:\Users\USER\Documents\baryonic_space\baryonic_space-main\part4\vivado_part4_zynq\fft_pl_ps_part4_zynq.xsa
      ```
    - **Next**.
13. **Operating System / Processor** sayfası:
    - **Operating System:** `standalone`
    - **Processor:** `ps7_cortexa9_0`
    - **Next** → **Finish**.
14. Platform component açılır (ortada özet sayfa görürsün).
15. Sol üst **Build** butonu (çekiç ikonu) → 1–2 dakika bekle. Konsolda hata olmamalı, **"Build Finished"** görmelisin.

## 3. Application Component Oluştur

16. Tekrar **Vitis Components** sekmesi → mavi **+ → Create Application Component**.
17. Wizard:
    - **Name:** `dds_fft_test_app`
    - **Next**.
18. **Platform** seçimi:
    - **Select a platform from repository** sekmesinde `fft_pl_ps_platform` görünür (az önce build ettiğin). Seç → **Next**.
19. **Domain** seçimi:
    - **Domain:** `standalone_ps7_cortexa9_0`
    - **Next**.
20. **Templates** sayfası:
    - **Empty Application (C)** seç (Hello World değil).
    - **Finish**.
21. Application component açılır.

## 4. C Dosyasını Application'a Ekle

22. Sol panelde Vitis Components ağacında app'i genişlet:
    ```
    dds_fft_test_app
    └── src
    ```
23. **Windows Explorer aç**, şu dosyayı kopyala:
    ```
    C:\Users\USER\Documents\baryonic_space\baryonic_space-main\software\part4\vitis_baremetal_dds_fft_test.c
    ```
24. Vitis'te `dds_fft_test_app/src` klasörüne **sağ tık → Paste** (veya Explorer'dan sürükle-bırak).
25. Dosya `src/` altında görünmeli. Üzerine çift tıkla, açılsın — kod editöründe görünmeli.

## 5. Application'ı Build Et

26. Application component sayfası aktifken sol üstteki **Build** (çekiç) tıkla.
27. Konsolda derleme satırlarını gör. Hata yoksa şu satırı görmelisin:
    ```
    Finished building target: dds_fft_test_app.elf
    ```

> Compile error alırsan: muhtemelen `xil_io.h`/`sleep.h` bulunamıyor anlamına gelir; bu durumda platform doğru build edilmemiş olabilir. Adım 15'e dön.

## 6. UART Terminalini Aç (İndirmeden Önce)

İlk satırları kaçırmamak için terminali şimdi açıyoruz.

28. Vitis menüden: **Window → Show View → Vitis Serial Terminal** (yoksa: **Window → Show View → Other → Terminal → Terminal**).
29. Açılan terminal panelinde **+ (yeni bağlantı)** ikonuna tıkla:
    - **Connection type:** Serial Terminal
    - **Serial Port:** Aygıt Yöneticisi'nde gördüğün COM (örn. COM7)
    - **Baud Rate:** **115200**
    - **Data bits:** 8, **Stop bits:** 1, **Parity:** None, **Flow control:** None
    - **OK**.
30. Terminal "Connected" duruma geçer. Bekleyen ekran boştur, normal.

## 7. Karta Programla ve Çalıştır

31. Sol panelde **dds_fft_test_app** üstüne sağ tık.
32. **Run → Run on Hardware** seç (gerekirse alt menüde **Run As → Single Application Debug** yerine **Launch on Hardware**).

    Vitis sırayla:
    - JTAG üzerinden Zybo'ya bağlanır.
    - **PL'ye bitstream'i indirir** → Zybo'da **DONE LED yanar**.
    - PS init (DDR, MIO, FCLK kurulumu).
    - `dds_fft_test_app.elf`'i DDR'a yükler.
    - A9 core'unu reset edip kullanıcı kodundan başlatır.

33. Birkaç saniye sonra **UART terminalinde** şu çıktıyı gör:

```
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

## 8. Yeniden Çalıştırma

34. Kodu değiştirdiysen → **Build** (çekiç) → **Run on Hardware**. Bitstream zaten PL'de, sadece ELF tekrar yüklenir, daha hızlı.
35. Bitstream'i değiştirdiysen (Vivado'da yeni `.bit`/`.xsa`) → **platform component**'a dön → sağ tık `fft_pl_ps_platform` → **Update Hardware Specification** → yeni XSA'yı göster → **Build** → sonra app'i **Build** → **Run on Hardware**.

## Sorun Giderme (sık karşılaşılanlar)

| Belirti | Olası neden | Düzeltme |
| --- | --- | --- |
| "Cannot connect to target" / "Error connecting to JTAG cable" | JP5 JTAG'da değil veya başka bir Vivado oturumu kabloyu tutuyor | JP5 = JTAG, varsa Vivado HW Manager'ı kapat, USB'yi tekrar tak |
| "No cable detected" | Cable driver yok | `install_drivers.bat`'ı yönetici olarak çalıştır |
| Run başarılı ama UART boş | Yanlış COM, yanlış baud, CP210x yok | Aygıt Yöneticisi'nden COM doğrula, 115200 8N1, CP210x kurulu mu |
| UART karakterler bozuk | Baud yanlış (örn. 9600) | 115200 yap |
| `FAIL: peak_valid timeout` | DDS config tready/tvalid handshake takıldı | RTL fix doğru mu kontrol et, yeni XSA üretildi mi |
| `FAIL: target test N outside FFT resolution` ya da `peak_idx >= 128` | DDS sine/cosine lane'leri ters | `fft_pl_ps_top.v`'de `dds_re`/`dds_im` swap, re-build, yeni XSA, platform Update Hardware Spec, app rebuild |
| "elf not found" Run sırasında | App build edilmemiş | Adım 26'ya dön, çekiç tıkla |

## Hızlı Özet

| # | Eylem | Yer |
| --- | --- | --- |
| 1 | JP5=JTAG, JP6=USB, kablo, SW4=ON | Donanım |
| 2 | Vitis aç, workspace seç | Vitis |
| 3 | Create Platform Component → XSA seç → Build | Vitis |
| 4 | Create Application Component → Empty C | Vitis |
| 5 | C dosyasını `src/`'e kopyala | Vitis |
| 6 | App build (çekiç) | Vitis |
| 7 | Serial Terminal aç (COMx, 115200) | Vitis |
| 8 | App üstüne sağ tık → Run on Hardware | Vitis |
| 9 | UART'ta PASS satırlarını oku | Terminal |

Bunları takip edersen ilk denemede sonuca varmalısın. Bir adımda takılırsan ekran görüntüsü ya da hata mesajını yapıştır, oradan ilerleriz.
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
