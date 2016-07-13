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

public class kakuninn1 extends PApplet {








 Minim minim ;
 AudioPlayer player ;
 FFT fft ;

 float x = random(800);
 float y = random(800);
 public void setup (){
 
 minim = new Minim ( this );

 player = minim . loadFile ("../sounddata/wa.mp3",1024);
 fft = new FFT (player.bufferSize(),player.sampleRate ());

 noStroke ();
 player.play();
 }

 public void draw (){
 fft.forward(player.mix);

 for (int k = 0; k < fft.specSize(); k ++){
 int amp = 500;
 fill(min(fft.getBand(k)*amp,255));
 ellipse(random(width),random(height),fft.specSize()-k,(fft.specSize()-k));
 line(random(width),random(height),fft.specSize()-k,(fft.specSize()-k));
 triangle(random(width),random(height),fft.specSize()-k,(fft.specSize()-k),x,y);
  }
}
 public void stop (){
 player.close ();
 minim.stop ();
 super.stop ();
 }
  public void settings() {  size (800 , 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kakuninn1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
