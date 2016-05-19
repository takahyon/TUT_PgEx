int tSize = 60;

void setup(){
  background(255);
  size(800, 600);
  textSize(tSize);
  textAlign(CENTER, CENTER);
}

void draw(){
  fill(0, 0, 0);
  if(keyPressed){
    if(key == CODED) {
      if(keyCode == UP) {
        tSize += 10;
      } else if(keyCode == DOWN) {
        tSize -= 10;
      }
      if(tSize < 10){
        tSize = 10;
      } else if(tSize > 200){
        tSize = 200;
      }
    } else {
      textSize(tSize);
      text(key, mouseX, mouseY);
    }
  }

}
