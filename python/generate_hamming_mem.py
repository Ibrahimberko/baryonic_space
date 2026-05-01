import numpy as np
from pathlib import Path

N = 256
COEFF_BITS = 16
OUT_DIR = Path(__file__).resolve().parents[1] / "mem"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def to_hex_unsigned(value: int, bits: int) -> str:
    width = (bits + 3) // 4
    return f"{value:0{width}X}"


def main():
    n = np.arange(N)

    # Periodic Hamming form compatible with FFT block processing.
    w = 0.54 - 0.46 * np.cos(2 * np.pi * n / N)

    # Q1.15 unsigned-positive coefficients: 1.0 ~= 32767.
    scale = 2 ** 15 - 1
    q = np.round(w * scale).astype(int)
    q = np.clip(q, 0, scale)

    path = OUT_DIR / "hamming_q1_15.mem"
    with path.open("w", encoding="utf-8") as f:
        for val in q:
            f.write(to_hex_unsigned(int(val), COEFF_BITS) + "\n")

    print(f"wrote {path}")
    print(f"first coefficient float={w[0]:.6f}, q={q[0]}, hex={to_hex_unsigned(int(q[0]), COEFF_BITS)}")
    print(f"middle coefficient float={w[N//2]:.6f}, q={q[N//2]}, hex={to_hex_unsigned(int(q[N//2]), COEFF_BITS)}")


if __name__ == "__main__":
    main()
