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

public class reidai2 extends PApplet {

public void setup() {
  
  noStroke();
}

public void draw() {
  background(255,255,255);
  if(mousePressed) {
    if(mouseButton == LEFT) {
      fill(255, 0, 0);
      rect(100, 100, 200, 400);
    }
    else if(mouseButton == RIGHT) {
      fill(0, 0, 255);
      rect(500, 100, 200, 400);
    }
    println(mousePressed);
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
