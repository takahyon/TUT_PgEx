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

public class kakunin1 extends PApplet {

int x = 400;
int dx = 5;
int mode;

public void setup() {
  
}

public void draw() {
  background(186,183,224);
  fill(0,0,255);
  ellipse(x,height/2,100,100);

  if(mode == 1) {
    x += dx;
  }

  if(x < 0 || x > width) {
    dx *= -1;
  }
}

public void mousePressed() {

  if(mode == 1) {
    mode = 0;
  } else if(mode == 0){
    mode = 1;
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kakunin1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
