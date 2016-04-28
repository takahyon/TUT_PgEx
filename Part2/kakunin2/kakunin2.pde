size(800, 600);
int x = 100;
int y;
int d = 30;

for (int i = 0; i < 20; i++) {
  y = 100 + i * 20;
  ellipse(x, y, d, d);
}