void setup(){
  size(300, 300);
  textSize(64);
  textAlign(CENTER, CENTER);
}

void draw(){
  background(186, 183, 224);
  fill(0, 0, 255);
  if(keyPressed){
    if(key == CODED){
      if(keyCode == LEFT){
        text("Left", width/2, height/2);
      } else if(keyCode == RIGHT){
        text("Right", width/2, height/2);
      }
    }
    if(key == ENTER){
      text("Enter", width/2, height/2);
    } else if(key == ' '){
      text("Space", width/2, height/2);
    }
  }
}
