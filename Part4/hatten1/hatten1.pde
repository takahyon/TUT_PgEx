int r = 0;
int g = 0;
int b = 0;

void setup() {
  size(800, 600);
  textSize(20);
  rect(200, 0, 600, 600);
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
  text("0", 160, 20);
  text("255", 160, 520);
  rect(25, r*2, 30, 20);
  rect(75, g*2, 30, 20);
  rect(125, b*2, 30, 20);

  fill(r,g,b);
  rect(10, 540, 180, 40);

  stroke(r, g, b);
  if(mouseX > 200 && mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void keyPressed() {
  noStroke();
  fill(255);
  rect(200, 0, 600, 600);
}

void mousePressed() {
  if(mouseY > 10 && mouseY < 522) {
    if(mouseX > 30 && mouseX < 50) {
      r = (mouseY-10)/2;
    } else if(mouseX > 80 && mouseX < 100){
      g =  (mouseY-10)/2;
    } else if (mouseX > 130 && mouseX < 150) {
      b = (mouseY-10)/2;
    }
  }
}
