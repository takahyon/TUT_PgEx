size(800, 600);
int x;
int y;
int dx = 150;
int dy = 100;
float Veven = 30;
float VOdd = 15;
float V;
float sx;
float sy;

for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
    x = 65 + i * 170;
    y = 65 + j * 120;
    rect(x, y, dx, dy);
  }
}

void star() {

  pushMatrix();
  translate(100, 100);
rotate(radians(-90));
beginShape();
for (int si = 0; si < 10; si++) {
  if( si % 2 == 0 ) {
    V = Veven;
  } else {
    V = VOdd;
  }

  sx = V * cos(radians( 360 / 10 * si));
  sy = V * sin(radians( 360 / 10 * si));
  
  vertex(sx, sy);
  
}
endShape(CLOSE);
pushMatrix();