/* based on donut_deobfuscated.c */
import std::math;
import std::thread;
import std::io;

fn void main() {
    float a, b, i, j;
    float[1760]z;
    char[1760]q;
    io::print("\x1b[2J");

    for(;;) {
        mem::set(&q[0], 32, 1760);
        mem::set(&z[0], 0, 7040);
        for(j = 0; j < 6.28; j += 0.07) {
            for(i = 0; i < 6.28; i += 0.02) {
                float c = math::sin(i);
                float d = math::cos(j);
                float e = math::sin(a);
                float f = math::sin(j);
                float g = math::cos(a);
                float h = d + 2;
                float p = 1 / (c * h * e + f * g + 5);
                float l = math::cos(i);
                float m = math::cos(b);
                float n = math::sin(b);
                float t = c * h * g - f * e;
                int x = (int)(40 + 30 * p * (l * h * m - t * n));
                int y = (int)(12 + 15 * p * (l * h * n + t * m));
                int o = x + 80 * y;
                int r = (int)(8 * (f * e - c * d * g) * m - c * d * e - f * g - l * d * n);
                if(22 > y && y > 0 && x > 0 && 80 > x && p > z[o]) {
                    z[o] = p;
                    q[o] = ".,-~:;=!*#$@"[r > 0 ? r : 0];
                }
            }
        }

        io::print("\x1b[H");
        for(int k = 0; k < 1761; k++) {
            io::putchar(k % 80 ? q[k] : 10);
            a += 0.00004;
            b += 0.00002;
        }
        thread::sleep_ms(30);
    }
}
