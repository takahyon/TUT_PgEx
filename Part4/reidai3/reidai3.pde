int x = 0;
void setup() {
  size(800, 600);
  noStroke();
  fill(255, 0, 0);
}

void draw() {
  background(255, 255, 255);
  rect(x, 100, 200, 400);
}

void mousePressed() {
  if(mouseButton == LEFT) {
    x -= 200;
    if(x < 0) {
      x = width - 200;
    }
  }
  else if (mouseButton == RIGHT) {
    x += 200;
    if(x >= width) {
      x = 0;
    }
  }
}
