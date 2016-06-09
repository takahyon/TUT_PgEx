void setup(){
  size(800,300);
  noStroke();
}

void draw(){
  background(255);
  fill(0);
  sevenSegment(200,150);
}
void sevenSegment(int x, int y){
  hex(x,y-60, 0);
  hex(x+30,y-30, 1);
  hex(x+30,y+30, 1);
  hex(x,y+60, 0);
  hex(x-30,y+30, 1);
  hex(x-30,y-30, 1);
  hex(x,y, 0);
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
