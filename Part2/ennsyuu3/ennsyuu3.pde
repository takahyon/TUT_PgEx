size(800, 600);
int x;
int y;
int d = 50;

for (int i = 0; i < 22; i++) {
    for (int j = 0; j < 12; j++) {
    x = 100 + i * 20;
    y = 100 + j * 20;
    fill(i*12, j*12, 0);
    ellipse(x, y, d, d);
  }
}