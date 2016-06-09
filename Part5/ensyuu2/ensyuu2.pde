void setup() {
  size(800, 600);
  for (int i =0; i<10; i++) {
    int x=(int) random(801);
    int y= (int)random(601);
    hana(x, y);
  }
}

void hana(int x,int y){
   int l =35;
   int d =25;
   int r =(int)random(256);
   int g =(int)random(256);
   int b =(int)random(256);
   fill(r,g,b);
   for(int j = 0; j<5; j++){
  ellipse(calcX(x,d,TWO_PI/5*j),calcY(y,d, TWO_PI/5 * j),l,l);


  }fill(255,255,0);
  ellipse(x,y,l,l);
}


float calcX(int cx, int r, float a){
  float  x =cx + r * cos(a);
  return x;
}


float calcY(int cy, int r,float a){
  float y = cy + r * sin(a);
  return y;
}
