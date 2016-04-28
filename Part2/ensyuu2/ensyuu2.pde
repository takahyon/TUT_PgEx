size(800, 600);
int x = 100;
int y;
int d = 50;

for (int i = 0; i < 12; i++) {
  y = 100 + i * 30;
  fill(0, i*12, 0);
  ellipse(x, y, d, d);
}