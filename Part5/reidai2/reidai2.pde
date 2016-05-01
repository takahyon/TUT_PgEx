void setup(){
  size(800, 600);
}

void draw(){
}

void mousePressed(){
  if(mouseButton == LEFT){
    drawRecCir();
  }
}

void drawRecCir(){
  fill(0, 0, 255);
  rect(mouseX - 30, mouseY + 18, 60, 62);
  ellipse(mouseX,mouseY,50,50);
}
