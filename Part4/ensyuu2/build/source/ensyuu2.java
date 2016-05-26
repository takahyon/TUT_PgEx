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

public class ensyuu2 extends PApplet {

int tSize = 60;

public void setup(){
  background(255);
  
  textSize(tSize);
  textAlign(CENTER, CENTER);
}

public void draw(){
  fill(0, 0, 0);
  if(keyPressed){
    if(key == CODED) {
      if(keyCode == UP) {
        tSize += 10;
      } else if(keyCode == DOWN) {
        tSize -= 10;
      }
      if(tSize < 10){
        tSize = 10;
      } else if(tSize > 200){
        tSize = 200;
      }
    } else {
      textSize(tSize);
      text(key, mouseX, mouseY);
    }
  }

}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ensyuu2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
