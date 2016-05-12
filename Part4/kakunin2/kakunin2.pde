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
  
  if(keyPressed) {
    if(keyCode == LEFT) {
      x -= dx;
    
      if(x < 0) {
        x = 0;
      }
    } else if(keyCode == RIGHT) {
      x += dx;
    
      if(x > width) {
        x = width;
      }
    }
  }
}