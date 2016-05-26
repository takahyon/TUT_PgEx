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
  public void setup() {

background(255);
int[] data = {132, 250, 92, 40};
int[] gray = {160, 80, 200, 100};

int x = 100;
for(int i = 0; i < data.length; i++){
  fill(gray[i]);
  rect(x, height/2-25, data[i], 50);
  x += data[i];
}
    noLoop();
  }

  public void settings() { size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
