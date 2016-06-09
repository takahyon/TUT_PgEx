void setup(){
  size(800,300);
  noStroke();
}

void draw(){
  background(255);
  fill(0);
  int h = hour();
  int m = minute();
  int s = second();

  sevenSegment (80 , height /2 , h /10);
  sevenSegment (180 , height /2 , h %10);
  ellipse (265 , height /2+20 , 15 , 15);
  ellipse (265 , height /2 -20 , 15 , 15);
  sevenSegment (350 , height /2 , m /10);
  sevenSegment (450 , height /2 , m %10);
  ellipse (535 , height /2+20 , 15 , 15);
  ellipse (535 , height /2 -20 , 15 , 15);
  sevenSegment (620 , height /2 , s /10);
  sevenSegment (720 , height /2 , s %10);
}
void sevenSegment(int x, int y, int n){
  if(n == 0){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x-30,y+30, 1); //E
    hex(x-30,y-30, 1); //F
  }
  if(n == 1){
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
  }
  if(n == 2){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x,y+60, 0); //D
    hex(x-30,y+30, 1); //E
    hex(x,y, 0); //G
  }
  if(n == 3){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x,y, 0); //G
  }
  if(n == 4){
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
    hex(x-30,y-30, 1); //F
    hex(x,y, 0); //G
  }
  if(n == 5){
    hex(x,y-60, 0); //A
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x-30,y-30, 1); //F
    hex(x,y, 0); //G
  }
  if(n == 6){
    hex(x,y-60, 0); //A
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x-30,y+30, 1); //E
    hex(x-30,y-30, 1); //F
    hex(x,y, 0); //G
  }
  if(n == 7){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
  }
  if(n == 8){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x-30,y+30, 1); //E
    hex(x-30,y-30, 1); //F
    hex(x,y, 0); //G
  }
  if(n == 9){
    hex(x,y-60, 0); //A
    hex(x+30,y-30, 1); //B
    hex(x+30,y+30, 1); //C
    hex(x,y+60, 0); //D
    hex(x-30,y-30, 1); //F
    hex(x,y, 0); //G
  }
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
