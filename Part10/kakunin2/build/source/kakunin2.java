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

public class kakunin2 extends PApplet {








 Minim minim ; // M i n i m\u578b\u306e\u5909\u6570m i n i m\u306e\u5ba3\u8a00
 AudioPlayer player ; // A u d i o P l a y e r \u578b \u306e \u5909 \u6570 p l a y e r \u306e \u5ba3 \u8a00
 float amp = 10.0f; // \u4fe1 \u53f7 \u306e \u5897 \u5e45 \u7387 ( \u4f8b \u984c1 \u3067 \u6c7a \u5b9a \u3057 \u305f \u5024 \u3092 \u4f7f \u7528 )

 public void setup (){
 // 800\u00d7800 \u306e \u30a6 \u30a4 \u30f3 \u30c9 \u30a6 \u3092 \u4f5c \u6210
minim = new Minim ( this ); // M i n i m \u578b \u306e \u5909 \u6570 m i n i m \u306e \u30a4 \u30f3 \u30b9 \u30bf \u30f3 \u30b9 \u3092 \u751f \u6210
 player = minim . loadFile ("../sounddata/music.wav", width );
 player . play (); // \u518d \u751f \u958b \u59cb
 }

 public void draw (){
 // \u51e6 \u7406 1 ( \u80cc \u666f \u8272 \u3068 \u7dda \u306e \u8272 \u306e \u8a2d \u5b9a )
 background (0); // \u80cc \u666f \u8272 \u3092 \u9ed2 \u306b \u8a2d \u5b9a
 stroke (255); // \u7dda \u306e \u8272 \u3092 \u767d \u306b \u8a2d \u5b9a
 // \u51e6 \u7406 2 ( \u5909 \u6570 \u306e \u5ba3 \u8a00 )
 int maxL = height /2; // \u7dda \u306e \u9577 \u3055 \u306e \u6700 \u5927 \u5024 \u3092 h ei g h t /2 \u306b \u8a2d \u5b9a
 float angle = 0; // \u7dda \u3092 \u63cf \u753b \u3059 \u308b \u89d2 \u5ea6 ( 0 \u3067 \u521d \u671f \u5316 )
 int centerX = width/2; // \u30a6 \u30a4 \u30f3 \u30c9 \u30a6 \u306e \u4e2d \u5fc3 \u306e x \u5ea7 \u6a19 cen te rX ( i n t \u578b )
 int centerY = height/2; // \u30a6 \u30a4 \u30f3 \u30c9 \u30a6 \u306e \u4e2d \u5fc3 \u306e y \u5ea7 \u6a19 cen te rY ( i n t \u578b )

 for ( int i = 0; i < player . bufferSize (); i ++){ // p l a y e r . b u f f e r S i z e ( ) \u56de \u7e70 \u308a \u8fd4 \u3059
 // \u51e6 \u7406 3 ( \u4fe1 \u53f7 \u306e \u5927 \u304d \u3055 \u306b \u5fdc \u3058 \u305f \u9577 \u3055 \u306e \u76f4 \u7dda \u306e \u63cf \u753b )
 float lineL = abs ( player . left . get ( i )) * maxL * amp ; // \u5de6 \u5074 \u306e i \u756a \u76ee \u306e \u4fe1 \u53f7
 // \u306b \u5fdc \u3058 \u3066 \u7dda \u306e \u9577 \u3055 \u3092 \u6c7a \u5b9a
 float x = centerX+lineL*cos(angle); // \u4e2d \u5fc3 \u304b \u3089 \u8ddd \u96e2 \u304c l i n e L \uff0c \u89d2 \u5ea6 \u304c a n g l e \u306e \u70b9 \u306e x \u5ea7 \u6a19 x ( f l o a t \u578b )
 float y = centerY+lineL*sin(angle); // \u4e2d \u5fc3 \u304b \u3089 \u8ddd \u96e2 \u304c l i n e L \uff0c \u89d2 \u5ea6 \u304c a n g l e \u306e \u70b9 \u306e y \u5ea7 \u6a19 y ( f l o a t \u578b )
 line(centerX,centerY,x,y); // \u4e2d \u5fc3 ( centerX , cen te rY ) \u3068 ( x , y ) \u3092 \u7d50 \u3076 \u76f4 \u7dda \u3092 \u63cf \u753b

 // \u51e6 \u7406 4 ( \u89d2 \u5ea6 \u306e \u66f4 \u65b0 )
 angle += TWO_PI / player . bufferSize (); // \u89d2 \u5ea6 angle\u3092TWO PI / p l a y e r . b u f f e r S i z e ( ) \u3060 \u3051
 // \u5897 \u3084 \u3059
 }
}


 public void stop (){ // \u30d7 \u30ed \u30b0 \u30e9 \u30e0 \u304c \u7d42 \u4e86 \u3055 \u308c \u308b \u3068 \u304d \u306b \u547c \u3073 \u51fa \u3055 \u308c \u308b \u95a2 \u6570
 player . close (); // \u97f3 \u58f0 \u5165 \u529b \u7528 \u306e \u5909 \u6570 p l a y e r \u3092 \u9589 \u3058 \u308b
 minim . stop (); // mi nim\u3092\u7d42\u4e86
 super . stop (); // \u30d7 \u30ed \u30b0 \u30e9 \u30e0 \u306e \u7d42 \u4e86 \u51e6 \u7406
 }
  public void settings() { 
size (800 , 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kakunin2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
