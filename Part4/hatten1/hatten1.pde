void setup() {
  size(800, 600);
  textSize(20);
  rect(200, 0, 600, 600);
  int r = 0;
  int g = 0;
  int b = 0;
}

void draw() {
  noStroke();

  fill(128);
  rect(0, 0, 200, 600);

  fill(255);
  rect(30, 10, 20, 512);
  rect(80, 10, 20, 512);
  rect(130, 10, 20, 512);

  fill(0);
  text("R", 10, 250);
  text("G", 60, 250);
  text("B", 110, 250);
  text("0", 160, 520);
  text("")


}
