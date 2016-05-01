void setup(){
  size(800, 600);
  noFill();
  ellipse(width/2,height/2,200,200);
  for(int i = 0; i < 3; i++){
    ellipse(calcX(width/2, 100, PI/6 + TWO_PI/3 * i),
            calcY(height/2, 100, PI/6 + TWO_PI/3 * i), 100, 100);
  }
}

float calcX(int cx, int r, float a){
  float x = cx +r * cos(a);
  return x;
}

float calcY(int cy, int r, float a){
  float y = cy + r * sin(a);
  return y;
}
