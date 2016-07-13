import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class kakunin1 extends PApplet {








 Minim minim ;
 AudioPlayer player ;
 float amp = 10.0f;

 public void setup(){
   
   minim = new Minim(this);
   player = minim.loadFile("../sounddata/music.wav",width);
   player.play();
 }

 public void draw (){
 background (0);

colorMode ( HSB , 2.0f , 255 , 255);
 for ( int i = 0; i < player . bufferSize (); i ++){ // p l a y e r . b u f f e r S i z e ( ) \u56de \u7e70 \u308a \u8fd4 \u3059
 //drawLine();
 drawLine(i,player.left.get(i),player.right.get(i));// \u5f15 \u6570 \u3068 \u3057 \u3066 , i , \u5de6 \u53f3 \u305d \u308c \u305e \u308c \u306e i \u756a \u76ee \u306e \u4fe1 \u53f7 \u306e \u5927 \u304d \u3055 \u3092 \u8a2d \u5b9a
 }
 }

 public void drawLine ( int i , float left , float right ){
 float colorLeft = min ( left * amp +1 , 2.0f);
 float colorRight = min ( right * amp +1 , 2.0f);
 float leftPos = 200+left*50*amp;
 float rightPos = 600+right*50*amp;
 stroke(colorLeft,255,255);
 fill(colorLeft,255,255);
 line(i,leftPos,i+random(-50,50),leftPos+random(-50,50));
 fill(colorRight,255,255);
 line(i,rightPos,i+random(-50,50),rightPos+random(-50,50));
 }

public void stop (){
 player . close ();
 minim . stop ();
 super . stop ();
 }
  public void settings() {  size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kakunin1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
