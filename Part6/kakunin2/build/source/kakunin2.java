import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class kakunin2 extends PApplet {

int n = 8;
float[] x = new float[n];
float[] y = new float[n];

public void setup(){
  
  noStroke();
}

public void draw(){
}

public void mousePressed(){
  drawPoly();
}

public void drawPoly(){
  int r = 50;
  for(int i = 0; i < n; i++){
    x[i] = mouseX + r * cos(radians(360/n*i+90));
    y[i] = mouseY - r * sin(radians(360/n*i+90));
  }
  fill(255, 0, 0);

  beginShape();
  for(int i = 0; i < n ; i++){
    vertex(x[i],y[i]);
  }
  endShape();
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kakunin2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
