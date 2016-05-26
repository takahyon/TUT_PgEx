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

public class reidai5 extends PApplet {

int[][] xy = new int[10][2];

public void setup(){
  
  background(255);
}

public void draw(){
  background(255);
  for(int i = xy.length-1; i > 0; i--){
    for(int j = 0; j < xy[i].length; j++){
      xy[i][j] = xy[i-1][j];
    }
  }
  xy[0][0] = mouseX;
  xy[0][1] = mouseY;

  for(int i = 0 ; i < xy.length; i++){
    ellipse(xy[i][0],xy[i][1],width,height);
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai5" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
