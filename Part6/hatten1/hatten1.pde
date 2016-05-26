void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 3; j++){
      int x = 100 + i * 150;
      int y = 150 + j * 150;
      int mode = 0;
      if(x > mouseX && y > mouseY){
        mode = 0;
      } else if(x < mouseX && y < mouseY){
        mode = 1;
      } else if (x > mouseX && y > mouseY){
        mode = 2;
      }
      drawCat(x, y, mode);
    }
  }
  drawFish();
}

void drawCat(int x, int y, int mode) {
  int[][] diffX = {{0, 0, -20, 0, -10},{0, 0, 0, 20, 10}};
  int[][] diffY = {{50, 0, -10, -10, 0},{50, 0, 0, 0, 10}};
  int[] sizeW = {40, 100, 5, 5, 10};
  int[] sizeH = {60, 80, 5, 5, 5};

  int[][] earLX = {{35, 40, 5},{30, 40, -20}};
  int[][] earRX = {{-30, -40, 20},{-35, -40, -5}};
  int[] earY = {-50, -20, -20};

  int[][] tailX = {{0, 40},{0, -40}};
  int[] tailY = {75, 40};

  noStroke();
  for(int i = 0; i < 5; i++){
    if(i < 2){
      fill(239, 228,176);
    } else {
      fill(0);
    }
    ellipse(x+diffX[mode%2][i], y+diffY[mode/2][i], sizeW[i], sizeH[i]);
  }

  fill(239, 228, 176);
  triangle(x+earRX[mode%2][0],y+earY[0],x+earRX[mode%2][1],y+earY[1],x+earRX[mode%2][0],y+earY[2]);
  triangle(x+earLX[mode%2][0],y+earY[0],x+earLX[mode%2][1],y+earY[1],x+earLX[mode%2][0],y+earY[2]);
  stroke(239, 228, 176);
  strokeWeight(10);
  line(x+tailX[mode%2][0], y+tailY[0], x+tailX[mode%2][1], y+tailY[1]);
}

void drawFish(){
  noStroke();
  fill(150, 200, 250);
  ellipse(mouseX, mouseY, 50, 20);
  triangle(mouseX+10,mouseY,mouseX+30,mouseY-10,mouseX+30,mouseY+10);
}
