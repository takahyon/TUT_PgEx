int x = 50;
int dx = 5;
int y = 50;
int dy  = 0;
int dir = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(190, 190, 190);
  fill(0, 0, 225);
  ellipse(x, y, 100, 100);

  x += dx;
  y += dy;
  if (x >= width -50 && dir == 0) {
    dir=1;
    dx=0;
    dy=5;
  } else if ( y >= height -50 && dir == 1) {
    dir=2;
    dx=-5;
    dy=0;
  } else if ( x<= 50 && dir == 2) {
    dir=3;
    dx=0;
    dy=-5;
  } else if (dir == 3 && y <=50) {
    dir=0;
    dx=5;
    dy=0;
  }
}