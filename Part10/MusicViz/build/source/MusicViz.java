import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class MusicViz extends PApplet {




Minim minim;
AudioPlayer player;
AudioMetaData meta;
BeatDetect beat;
int  r = 200;
float rad = 70;
boolean s = false;
public void setup()
{
  //size(displayWidth, displayHeight);
  //fullScreen();
  
  minim = new Minim(this);
  player = minim.loadFile("../sounddata/wa.mp3");
  meta = player.getMetaData();
  beat = new BeatDetect();
  player.loop();
  player.play();
  background(-1);
  noCursor();
}

public void draw()
{
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
 // if (flag)
 // showMeta();
}


public void showMeta() {
  int time =  meta.length();
  textSize(50);
  textAlign(CENTER);
  text( (int)(time/1000-millis()/1000)/60 + ":"+ (time/1000-millis()/1000)%60, -7, 21);
}

boolean flag =false;
public void mousePressed() {
  if (dist(mouseX, mouseY, width/2, height/2)<150) flag =!flag;
}

//
/*boolean sketchFullScreen() {
  return true;
}
*/
public void keyPressed() {
  if(key=='e')exit();
  if(key=='s')saveFrame("###.jpeg");
  if(key=='f'&& s==false){
    size(1920,1080);
    noStroke();
}if(key=='f'&& s==true){
  size(800,600);
}

}
  public void settings() {  size(800,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "MusicViz" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
