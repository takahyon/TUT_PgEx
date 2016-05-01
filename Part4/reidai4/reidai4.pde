void setup(){
  size(300, 300);
  textSize(64);
  textAlign(CENTER, CENTER);
}

void draw(){
  background(186, 183, 224);
  fill(0, 0, 255);
  if(keyPressed){
    text(key, width/2, height/2);
  }
}
