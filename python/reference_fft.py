import numpy as np
from pathlib import Path

FS = 200e6
N = 256
INPUT_BITS = 12
AMP = 0.9  # avoid clipping
OUT_DIR = Path(__file__).resolve().parents[1] / "mem"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def quantize_signed(x: np.ndarray, bits: int = INPUT_BITS) -> np.ndarray:
    """Quantize real-valued samples in [-1, 1) to signed fixed-point integer."""
    max_pos = 2 ** (bits - 1) - 1
    min_neg = -2 ** (bits - 1)
    q = np.round(x * max_pos).astype(int)
    return np.clip(q, min_neg, max_pos)


def to_twos_hex(value: int, bits: int) -> str:
    """Convert signed integer to fixed-width two's-complement hex string."""
    if value < 0:
        value = (1 << bits) + value
    width = (bits + 3) // 4
    return f"{value:0{width}X}"


def generate_complex_tone(freq_hz: float) -> np.ndarray:
    n = np.arange(N)
    return AMP * np.exp(1j * 2 * np.pi * freq_hz * n / FS)


def write_complex_mem(freq_hz: float, name: str):
    """Write real and imaginary parts to separate .mem files (one hex per line)."""
    x = generate_complex_tone(freq_hz)
    real_q = quantize_signed(np.real(x))
    imag_q = quantize_signed(np.imag(x))

    re_path = OUT_DIR / f"{name}_re.mem"
    im_path = OUT_DIR / f"{name}_im.mem"

    with re_path.open("w", encoding="utf-8") as f:
        for r in real_q:
            f.write(f"{to_twos_hex(int(r), INPUT_BITS)}\n")

    with im_path.open("w", encoding="utf-8") as f:
        for im in imag_q:
            f.write(f"{to_twos_hex(int(im), INPUT_BITS)}\n")

    return re_path, im_path


def fft_report(freq_hz: float):
    x = generate_complex_tone(freq_hz)
    X = np.fft.fft(x)
    mag2 = np.abs(X) ** 2
    peak_bin = int(np.argmax(mag2))
    theoretical_bin = freq_hz / (FS / N)
    return theoretical_bin, peak_bin, mag2


def main():
    print(f"fs = {FS/1e6:.1f} MHz")
    print(f"N = {N}")
    print(f"FFT bin resolution = {FS/N/1e3:.2f} kHz")
    print()

    tones = [
        (12.5e6, "tone_12p5MHz"),
        (10e6,   "tone_10MHz"),
    ]

    for freq, name in tones:
        re_path, im_path = write_complex_mem(freq, name)
        theoretical_bin, peak_bin, _ = fft_report(freq)
        print(f"{freq/1e6:.1f} MHz")
        print(f"  theoretical bin  = {theoretical_bin:.3f}")
        print(f"  Python FFT peak  = {peak_bin}")
        print(f"  wrote {re_path.name}, {im_path.name}")
        print()


if __name__ == "__main__":
    main()
