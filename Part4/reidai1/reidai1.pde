size(800, 600);
int x;
int y = height/2;
int d = 30;
for(int i = 0; i < 15; i++) {
  x = 50 + i * 50;
  if(i < 7) {
    fill(255,0,0);
  } else if(i == 7) {
    fill(255,255,0);
  } else {
    fill(0,0,255);
  }
  ellipse(x,y,d,d);
}