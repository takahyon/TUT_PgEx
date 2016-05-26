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

public void setup(){
  int kWh = 100;
  int powerCharge = calcCharge(kWh);
  println(powerCharge);
}

public int calcCharge(int kWh){
  int charge = kWh * 17;
  return charge;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "reidai5" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
