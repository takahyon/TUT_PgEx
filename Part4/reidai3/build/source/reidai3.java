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

public class reidai3 extends PApplet {

int x = 0;
public void setup() {
  
  noStroke();
  fill(255, 0, 0);
}

public void draw() {
  background(255, 255, 255);
  rect(x, 100, 200, 400);
}

public void mousePressed() {
  if(mouseButton == LEFT) {
    x -= 200;
    if(x < 0) {
      x = width - 200;
    }
  }
  else if (mouseButton == RIGHT) {
    x += 200;
    if(x >= width) {
      x = 0;
    }
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
