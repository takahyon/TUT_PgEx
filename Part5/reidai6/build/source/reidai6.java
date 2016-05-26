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

public class reidai6 extends PApplet {

public void setup(){
  
  noFill();
  ellipse(width/2,height/2,200,200);
  for(int i = 0; i < 3; i++){
    ellipse(calcX(width/2, 100, PI/6 + TWO_PI/3 * i),
            calcY(height/2, 100, PI/6 + TWO_PI/3 * i), 100, 100);
  }
}

public float calcX(int cx, int r, float a){
  float x = cx +r * cos(a);
  return x;
}

public float calcY(int cy, int r, float a){
  float y = cy + r * sin(a);
  return y;
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
