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

public class reidai1 extends PApplet {
  public void setup() {


int[] x = {200, 550, 300};
int[] y = {100, 300, 400};
int[] d = {50, 100, 180};

for(int i = 0; i < x.length; i++){
  ellipse(x[i],y[i],d[i],d[i]);
}
    noLoop();
  }

  public void settings() { size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
