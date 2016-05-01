void setup() {
  size(800, 600);
  strokeWeight(3);
  background(255);
}

void draw() {
  if(mousePressed) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
