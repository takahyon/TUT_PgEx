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

public class hatten1 extends PApplet {

int lineH;
int flagW;
int flagH;
int baseX;
int baseY;
int cantonW;
int cantonH;

public void setup(){
  
  noStroke();
}

public void draw(){
  drawBase();
  drawCanton();
  int gapX = cantonW * 1/12;
  int gapY = cantonH * 1/10;
  int x,y;
  for(int i=0;i<6;i++){
    for(int j=0;j<5;j++){
      x = baseX + gapX + gapX * 2 * i;
      y = baseY + gapY + gapY * 2 * j;
      drawStar(x,y);
    }
  }
  for(int i=0;i<5;i++){
    for(int j=0;j<4;j++){
      x = baseX + gapX * 2 + gapX * 2 * i;
      y = baseY + gapY * 2 + gapY * 2 * j;
      drawStar(x,y);
    }
  }
}


public void drawBase(){
  lineH = 27;
  flagH = lineH * 13;
  flagW = flagH * 19/10;
  baseX = width/2-flagW/2;
  baseY = height/2-flagH/2;
  fill(255);
  rect(baseX,baseY,flagW,flagH);
  fill(178,34,52);
  for(int i=0;i<7;i++){
    int y = baseY + lineH*2 * i;
    rect(baseX,y,flagW,lineH);
  }
}

public void drawCanton(){
  cantonW = flagW * 2/5;
  cantonH = flagH * 7/13;
  fill(60,59,110);
  rect(baseX,baseY,cantonW,cantonH);
}

public void drawStar(int x,int y){
  int r = lineH * 2/5;
  fill(255);
  for(int n=0;n<5;n++){
    triangle(x,y,calcX(x,r,TWO_PI/5*n+PI/2),
    calcY(y,r,TWO_PI/5*n+PI/2),
    calcX(x,r,TWO_PI/5*(n+2)+PI/2),
    calcY(y,r,TWO_PI/5*(n+2)+PI/2));
  }
}

public float calcX(int cx,int r,float a){
  float x = cx + r * cos(a);
  return x;
}

public float calcY(int cy,int r,float a){
  float y = cy - r * sin(a);
  return y;
}
  public void settings() {  size(800,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "hatten1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
