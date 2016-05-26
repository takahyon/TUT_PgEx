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

int x;
int y;
float d;

public void setup() {
  
  for(int x = 0; x < 20; x++) {
    for(int y = 0; y < 10; y++) {
      randomCircle(x, y);
    }
  }
}

public void draw() {

}

public void randomCircle(int x, int y) {
  x = 100 + x * 30;
  y = 100 + y * 30;
  d = random(5, 50);
  ellipse(x, y, d, d);
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
