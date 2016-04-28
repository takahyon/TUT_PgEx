size(800, 600);
int x;
int y = 100;
int d = 30;

for (int i = 0; i < 30; i++) {
  x = 100 + i * 20;
  ellipse(x, y, d, d);
}