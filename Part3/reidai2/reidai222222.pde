size(800, 600);
int x;
int y = height/2;
int d = 30;
int m;
for(int i = 0; i < 15; i++) {
  x = 50 + i * 50;
  m = i % 3;
  if(m == 0) {
    fill(255,0,0);
  } else if(m == 1) {
    fill(0,255,0);
  } else {
    fill(0,0,255);
  }
  ellipse(x,y,d,d);
}