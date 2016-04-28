int x = 0;
int dx = 5;

void setup() {
  size(800, 600);
}

void draw() {
  background(186,183,224);
  fill(0,0,255);
  ellipse(x,height/2,100,100);
  x += dx;
}