size(800, 600);
int x;
int y;
int d = 30;
int m;

for(int i = 0; i < 15; i++) {
  for(int j = 0; j < 11; j++) {
  x = 50 + i * 50;
  y = 50 + j * 50;
  m = (i + j) % 3;
  switch(m) {
    case 0:
      fill(255,0,0);
      break;
    case 1:
      fill(0,255,0);
      break;
    case 2:
      fill(0,0,255);
      break;
  }
  ellipse(x,y,d,d);
  }
}
  