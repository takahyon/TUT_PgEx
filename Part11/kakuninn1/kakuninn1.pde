import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

 Minim minim ;
 AudioPlayer player ;
 FFT fft ;

 float x = random(800);
 float y = random(800);
 void setup (){
 size (800 , 800);
 minim = new Minim ( this );

 player = minim . loadFile ("../sounddata/wa.mp3",1024);
 fft = new FFT (player.bufferSize(),player.sampleRate ());

 noStroke ();
 player.play();
 }

 void draw (){
 fft.forward(player.mix);

 for (int k = 0; k < fft.specSize(); k ++){
 int amp = 500;
 fill(min(fft.getBand(k)*amp,255));
 ellipse(random(width),random(height),fft.specSize()-k,(fft.specSize()-k));
 line(random(width),random(height),fft.specSize()-k,(fft.specSize()-k));
 triangle(random(width),random(height),fft.specSize()-k,(fft.specSize()-k),x,y);
  }
}
 void stop (){
 player.close ();
 minim.stop ();
 super.stop ();
 }
