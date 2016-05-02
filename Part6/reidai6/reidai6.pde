int n = 5;
float[] x = new float[n];
float[] y = new float[n];

void setup(){
  size(800, 600);
  noStroke();
}

void draw(){
}

void mousePressed(){
  drawPoly();
}

void drawPoly(){
  int r = 50;
  for(int i = 0; i < n; i++){
    x[i] = mouseX + r * cos(radians(360/n*i+90));
    y[i] = mouseY - r * sin(radians(360/n*i+90));
  }
  fill(255, 255, 0);

  beginShape();
  for(int i = 0; i < n ; i++){
    vertex(x[i],y[i]);
  }
  endShape();
}
