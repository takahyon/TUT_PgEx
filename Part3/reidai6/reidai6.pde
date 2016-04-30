int x = 0;
int dx = 5;
int y = 0;
int dy = 7;

void setup() {
  size(800, 600);
}

void draw() {
  background(188,183,224);
  fill(0,0,255);
  ellipse(x,y,100,100);
  x += dx;
  if(x < 0 || x > width) {
    dx *= -1;
  }
  y += dy;
  if(y < 0 || y > height) {
    dy *= -1;
  }
}