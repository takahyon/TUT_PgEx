int[] x = new int[10];
int[] y = new int[10];

void setup(){
  size(800, 600);
  background(255);
}

void draw(){
  background(255);
  for(int i = x.length-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX;
  y[0] = mouseY;

  for(int i = 0; i < x.length; i++){
    ellipse(x[i],y[i],20,20);
  }
}
