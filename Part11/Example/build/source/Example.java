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

public class Example extends PApplet {









 Minim minim ; // M i n i m\u578b\u306e\u5909\u6570m i n i m\u306e\u5ba3\u8a00
 AudioPlayer player ; // A u d i o P l a y e r \u578b \u306e \u5909 \u6570 p l a y e r \u306e \u5ba3 \u8a00
 FFT fft ; // F F T \u578b \u306e \u5909 \u6570 f f t \u306e \u5ba3 \u8a00

 public void setup (){
 // \u51e6 \u7406 3 ( \u30a6 \u30a4 \u30f3 \u30c9 \u30a6 \u306e \u4f5c \u6210 )
  // 513\u00d7200 \u306e \u30a6 \u30a4 \u30f3 \u30c9 \u30a6 \u3092 \u4f5c \u6210
 // \u51e6 \u7406 4 ( M i n i m \u578b \u306e \u5909 \u6570 m i n i m \u306e \u30a4 \u30f3 \u30b9 \u30bf \u30f3 \u30b9 \u306e \u751f \u6210 )
 minim = new Minim ( this ); // M i n i m \u578b \u306e \u5909 \u6570 m i n i m \u306e \u30a4 \u30f3 \u30b9 \u30bf \u30f3 \u30b9 \u3092 \u751f \u6210
 // \u51e6 \u7406 5 ( \u97f3 \u58f0 \u30d5 \u30a1 \u30a4 \u30eb \u3092 \u6271 \u3046 \u305f \u3081 \u306e \u8a2d \u5b9a ) \u30d0 \u30c3 \u30d5 \u30a1 \u30b5 \u30a4 \u30ba \u306f1 0 2 4
 player = minim . loadFile ( "../sounddata/wa.mp3" , 1024);
 // \u51e6 \u7406 6 ( F F T \u578b \u306e \u5909 \u6570 f f t \u306e \u30a4 \u30f3 \u30b9 \u30bf \u30f3 \u30b9 \u306e \u751f \u6210 )
 fft = new FFT ( player . bufferSize () , player . sampleRate ());
 // F F T \u578b \u306e \u5909 \u6570 f f t \u306e \u30a4 \u30f3 \u30b9 \u30bf \u30f3 \u30b9 \u3092 \u751f \u6210
 // \u89e3 \u6790 \u3092 \u884c \u3046 \u30b5 \u30f3 \u30d7 \u30eb \u70b9 \u306e \u6570 \u3092 player . bufferSize () \u306b \u8a2d \u5b9a
 // \u89e3 \u6790 \u3092 \u884c \u3046 \u4fe1 \u53f7 \u306e \u30b5 \u30f3 \u30d7 \u30ea \u30f3 \u30b0 \u5468 \u6ce2 \u6570 \u3092 player . sampleRate () \u306b \u8a2d \u5b9a \uff0e
 player . play ();
 }

 public void draw (){
 // \u51e6 \u7406 7 ( \u8272 \u306e \u8a2d \u5b9a)
 background (255); // \u80cc \u666f \u3092 \u767d \u306b \u8a2d \u5b9a
 stroke (0); // \u7dda \u306e \u8272 \u3092 \u9ed2 \u306b \u8a2d \u5b9a
 // \u51e6 \u7406 8 ( F F T \u306e \u5b9f \u884c )
fft . forward ( player . mix ); // \u5de6 \u53f3 \u306e \u4fe1 \u53f7 \u3092 \u5408 \u308f \u305b \u305f \u4fe1 \u53f7( player . mix ) \u306b \u5bfe \u3057 \u3066 F F T \u3092 \u5b9f \u884c \u3000
 // \u51e6 \u7406 9 ( \u30b9 \u30da \u30af \u30c8 \u30e9 \u30e0 \u306e \u63cf \u753b)

 int highest = 0; // \u30b9 \u30da \u30af \u30c8 \u30e9 \u30e0 \u306e \u5024 \u304c \u6700 \u5927 \u3068 \u306a \u308b k \u306e \u5024 \u3092 \u6c42 \u3081 \u308b \u305f \u3081 \u306e \u5909 \u6570
 // h i g h e s t \u3092 \u5ba3 \u8a00 \u3057 \uff0c 0 \u3067 \u521d \u671f \u5316
 for ( int k = 0; k < fft . specSize (); k ++){ // fft . specSize () \u56de \u7e70 \u308a \u8fd4 \u3059
 line (k , height , k , height - fft . getBand ( k )); // \u30b9 \u30da \u30af \u30c8 \u30e9 \u30e0 \u306e \u5024 \u306b \u5fdc \u3058 \u305f
// \u9577 \u3055 \u306e \u7dda \u3092 \u63cf \u753b
 // \u30b9 \u30da \u30af \u30c8 \u30eb \u306e \u5024 \u304c \u6700 \u5927 \u3068 \u306a \u308b k \u306e \u5024 \u3092 \u6c42 \u3081 \u308b
 if ( fft . getBand ( k ) > fft . getBand ( highest )){
 highest = k ;
}
 }
 text ( highest * player . sampleRate ()/ player . bufferSize () ,100 , 20);
 // \u30b9 \u30da \u30af \u30c8 \u30eb \u306e \u5024 \u304c \u6700 \u5927 \u3068 \u306a \u308b k \u306b \u5bfe \u5fdc \u3059 \u308b \u5468 \u6ce2 \u6570 \u3092 (100 ,20) \u306e \u4f4d \u7f6e \u306b \u63cf \u753b
 float t = map(mouseX, 0, width, 0, 1);
 beat.detect(player.mix);
 fill(0xff1A1F18, 20);
 noStroke();
 rect(0, 0, width, height);
 translate(width/2, height/2);
 noFill();
 fill(-1, 10);
 if (beat.isOnset()) rad = rad*0.9f;
 else rad = 70;
 ellipse(0, 0, 2*rad, 2*rad);
 stroke(-1, 50);
 int bsize = player.bufferSize();
 for (int i = 0; i < bsize - 1; i+=5)
 {
   float x = (r)*cos(i*2*PI/bsize);
   float y = (r)*sin(i*2*PI/bsize);
   float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
   float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
   line(x, y, x2, y2);
 }
 beginShape();
 noFill();
 stroke(-1, 50);
 for (int i = 0; i < bsize; i+=30)
 {
   float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
   float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
   vertex(x2, y2);
   pushStyle();
   stroke(-1);
   strokeWeight(2);
   point(x2, y2);
   popStyle();
 }
 endShape();
 }

 public void stop (){ // \u30d7 \u30ed \u30b0 \u30e9 \u30e0 \u304c \u7d42 \u4e86 \u3055 \u308c \u308b \u3068 \u304d \u306b \u547c \u3073 \u51fa \u3055 \u308c \u308b \u95a2 \u6570
 // \u51e6 \u7406 10 ( \u30d7 \u30ed \u30b0 \u30e9 \u30e0 \u7d42 \u4e86 \u6642 \u306e \u51e6 \u7406)
 player . close (); // \u97f3 \u58f0 \u5165 \u529b \u7528 \u306e \u5909 \u6570 p l a y e r \u3092 \u9589 \u3058 \u308b
 minim . stop (); // m i n i m\u3092\u7d42\u4e86
 super . stop (); // \u30d7
}
  public void settings() {  size (513 , 200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Example" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
