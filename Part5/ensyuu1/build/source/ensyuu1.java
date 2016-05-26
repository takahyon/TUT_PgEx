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

public class ensyuu1 extends PApplet {

public void setup() {
  
}

public float calcArea(float fromX, float fromY, float toX, float toY) {
  float hig = dist(fromX, fromY, toX - fromX, toY);
  float wih = dist(fromX, fromY, toX, toY - fromY);
  return hig * wih;
}
public float calcPos(float from, float to, float alpha) {
  float pos = (to - from) * alpha + from;
  return pos;
}

public void draw() {
  background(200);
  fill(255, 255, 0);
  noStroke();
  rect(width/2, height/2, mouseX - width/2, mouseY - height/2);
  noFill();
  stroke(0);
  line(width/2, height/2, mouseX, mouseY);

  float length = dist(width/2, height/2, mouseX, mouseY);
  float area = calcArea(width/2, height/2, mouseX, mouseY);
  float x11 = calcPos(width/2, mouseX, 1.1f);
  float y11 = calcPos(height/2, mouseY, 1.1f);
  float x05 = calcPos(width/2, mouseX, 0.5f);
  float y05 = calcPos(height/2, mouseY, 0.5f);
  float xm01 = calcPos(width/2, mouseX, -0.1f);
  float ym01 = calcPos(height/2, mouseY, -0.1f);

  fill(0);
  textSize(16);

  text("("+mouseX+", "+mouseY+")", x11, y11);
  text("("+width/2+", "+height/2+")", xm01, ym01);
  text("S="+ area, x05, y05 -8);
  text("L="+ length, x05, y05 +8);
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ensyuu1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
