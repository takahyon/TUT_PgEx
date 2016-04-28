int sc;
int sx;
int sy;
int dir;
void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(190, 190, 190);

  if (mouseX < 400) {
    if (mouseY < 300) {
      sc = 1;
      sx = 0;
      sy = 0;
    }
  }

  if (mouseX > 400) {
    if (mouseY < 300) {
      sc = 2;
      sx = 400;
      sy = 0;
    }
  }

  if (mouseX < 400 ) {
    if (mouseY > 300 ) {
      sc = 3;
      sx = 0;
      sy = 300;
    }
  }

  if (mouseX > 400) {
    if (mouseY > 300) {
      sc = 4;
      sx = 400;
      sy = 300;
    }
  } 

  fill(0, 128, 255);
  rect(sx, sy, 400, 300);
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 100, 100);
  }