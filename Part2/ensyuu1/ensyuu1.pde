size(800, 600);
int x;
int y = 100;
int d = 50;

for (int i = 0; i < 22; i++) {
  x = 100 + i * 22;
  fill(i*12, 0, 0);
  ellipse(x, y, d, d);
}