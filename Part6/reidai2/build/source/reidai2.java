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

background(255);
int[] data = {132, 250, 92, 40};

line(200,100,200,500);
for(int i = 0; i < data.length; i++){
  fill(150);
  rect(200, 125+100*i, data[i], 50);
}
    noLoop();
  }

  public void settings() { size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
