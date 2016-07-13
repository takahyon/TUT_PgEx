import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

 Minim minim ;
 AudioPlayer player ;
 float amp = 10.0;

 void setup(){
   size(800,800);
   minim = new Minim(this);
   player = minim.loadFile("../sounddata/music.wav",width);
   player.play();
 }

 void draw (){
 background (0);

colorMode ( HSB , 2.0 , 255 , 255);
 for ( int i = 0; i < player . bufferSize (); i ++){ // p l a y e r . b u f f e r S i z e ( ) 回 繰 り 返 す
 //drawLine();
 drawLine(i,player.left.get(i),player.right.get(i));// 引 数 と し て , i , 左 右 そ れ ぞ れ の i 番 目 の 信 号 の 大 き さ を 設 定
 }
 }

 void drawLine ( int i , float left , float right ){
 float colorLeft = min ( left * amp +1 , 2.0);
 float colorRight = min ( right * amp +1 , 2.0);
 float leftPos = 200+left*50*amp;
 float rightPos = 600+right*50*amp;
 stroke(colorLeft,255,255);
 fill(colorLeft,255,255);
 line(i,leftPos,i+random(-50,50),leftPos+random(-50,50));
 fill(colorRight,255,255);
 line(i,rightPos,i+random(-50,50),rightPos+random(-50,50));
 }

void stop (){
 player . close ();
 minim . stop ();
 super . stop ();
 }
