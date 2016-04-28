size(800, 600);
int x;
int y = 150;
int d = 120;

for (int i = 0; i < 5; i++) {
  x = 200 + i * 100;
  d = 100 + i * 20;
  fill(50 + i * 50);
  ellipse(x, y, d, d);
}