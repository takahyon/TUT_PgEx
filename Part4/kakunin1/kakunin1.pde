size(800, 600);
int x;
int y;
int d = 30;
int m;

for(int i = 0; i < 15; i++) {
  for(int j = 0; j < 11; j++) {
  x = 50 + i * 50;
  y = 50 + j * 50;
  m = i % 3;
  
  if(i < 7) {
    fill(255,0,0);
  } else if(i == 7) {
    fill(255,255,0);
  } else {
    fill(0,0,255);
  }
  ellipse(x,y,d,d);
 }
}