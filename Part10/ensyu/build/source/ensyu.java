import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ensyu extends PApplet {



Minim minim;

AudioPlayer groove;
AudioRenderer radar, vortex, iso;
AudioRenderer[] visuals;

int select;

public void setup()
{
  // setup graphics
  

  // setup player
  minim = new Minim(this);
  groove = minim.loadFile("../music.mav", 1024);
  groove.loop();

  // setup renderers
  vortex = new VortexRenderer(groove);
  radar = new RadarRenderer(groove);
  iso = new IsometricRenderer(groove);

  visuals = new AudioRenderer[] {radar, vortex,  iso};

  // activate first renderer in list
  select = 0;
  groove.addListener(visuals[select]);
  visuals[select].setup();
}

public void draw()
{
  visuals[select].draw();
}

public void keyPressed() {
   groove.removeListener(visuals[select]);
   select++;
   select %= visuals.length;
   groove.addListener(visuals[select]);
   visuals[select].setup();
}

public void stop()
{
  groove.close();
  minim.stop();
  super.stop();
}
  public void settings() {  size(512, 512, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ensyu" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
