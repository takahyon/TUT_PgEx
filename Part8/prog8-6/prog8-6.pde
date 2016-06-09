void setup(){
  size(800,300);
  noStroke();
}

void draw(){
  background(255);
  fill(0);
  hex(200, 150, 0);
  hex(400, 150, 1);
}

void hex(int x, int y, int d){
  if(d==0){
    beginShape();
      vertex(x-28,y);
      vertex(x-20,y-8);
      vertex(x+20,y-8);
      vertex(x+28,y);
      vertex(x+20,y+8);
      vertex(x-20,y+8);
    endShape();
  } else if(d==1){
    beginShape();
      vertex(x,y-28);
      vertex(x+8,y-20);
      vertex(x+8,y+20);
      vertex(x,y+28);
      vertex(x-8,y+20);
      vertex(x-8,y-20);
    endShape();
  }
}
