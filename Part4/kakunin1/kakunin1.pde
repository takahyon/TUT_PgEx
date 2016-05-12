int x = 400;
int dx = 5;
int mode;

void setup() {
  size(800, 600);
}

void draw() {
  background(186,183,224);
  fill(0,0,255);
  ellipse(x,height/2,100,100);
  
  if(mousePressed) {
    if(mode == 1) {
      mode = 0;
    } else if(mode == 0){
      mode = 1;
    }
    delay(200);
  }
  
  if(mode == 1) {
    x += dx;
  }
  
  if(x < 0 || x > width) {
    dx *= -1;
  }
}