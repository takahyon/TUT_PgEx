float x;
float y;
float i;
void setup(){
  size(800, 600);
  for(i = 0; i < 5; i++) {
    x = 100 + random(width/2 -150, width/2 + 150);
    y += 100;
    drawCar(x, y);
  }
}

void drawCar(float x, float y){
  fill(0, 255, 255);
  rect(x-25, y-25, 50, 25);
  fill(255, 200, 0);
  rect(x-50, y, 100, 25);
  fill(60);
  ellipse(x-25,y+25,25,25);
  ellipse(x+25,y+25,25,25);
}
