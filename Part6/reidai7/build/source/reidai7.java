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

public class reidai7 extends PApplet {

int num = 16;
PImage[] images = new PImage[num];

public void setup(){
  
  frameRate(12);
  for(int i = 0; i < num; i++){
    images[i] = loadImage("run" + i + ".png");
  }
}

public void draw(){
  int frame = frameCount % num;
  image(images[frame], 30, 30);
}
  public void settings() {  size(188, 188); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai7" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
