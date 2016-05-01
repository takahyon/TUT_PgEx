void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255,255,255);
  if(mousePressed) {
    if(mouseButton == LEFT) {
      fill(255, 0, 0);
      rect(100, 100, 200, 400);
    }
    else if(mouseButton == RIGHT) {
      fill(0, 0, 255);
      rect(500, 100, 200, 400);
    }
    println(mousePressed);
  }
}
