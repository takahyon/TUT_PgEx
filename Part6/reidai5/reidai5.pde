int[][] xy = new int[10][2];

void setup(){
  size(800, 600);
  background(255);
}

void draw(){
  background(255);
  for(int i = xy.length-1; i > 0; i--){
    for(int j = 0; j < xy[i].length; j++){
      xy[i][j] = xy[i-1][j];
    }
  }
  xy[0][0] = mouseX;
  xy[0][1] = mouseY;

  for(int i = 0 ; i < xy.length; i++){
    ellipse(xy[i][0],xy[i][1],width,height);
  }
}
