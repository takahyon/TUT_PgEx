int n = 8;
float[] x = new float[n];
float[] y = new float[n];

void setup(){
  size(800, 600);
  noStroke();
  fill(255, 0, 0);
}

void draw(){
}

void mousePressed(){
  drawPoly();
}

void keyPressed() {
  if (key == '5') {
    n = 5;
    fill(255, 255, 0);
  } else if (key == '6'){
    n = 6;
    fill(0, 0, 255);
  } else if (key == '7') {
    n = 7;
    fill(0, 255, 0);
  } else if (key == '8') {
    n = 8;
    fill(255, 0, 0);
  }
}

void drawPoly(){
  int r = 50;
  for(int i = 0; i < n; i++){
    x[i] = mouseX + r * cos(radians(360/n*i+90));
    y[i] = mouseY - r * sin(radians(360/n*i+90));
  }

  beginShape();
  for(int i = 0; i < n ; i++){
    vertex(x[i],y[i]);
  }
  endShape();
}
