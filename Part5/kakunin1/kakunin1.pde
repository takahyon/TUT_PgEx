int x;
int y;
float d;

void setup() {
  size(800, 600);
  for(int x = 0; x < 20; x++) {
    for(int y = 0; y < 10; y++) {
      randomCircle(x, y);
    }
  }
}

void draw() {

}

void randomCircle(int x, int y) {
  x = 100 + x * 30;
  y = 100 + y * 30;
  d = random(5, 50);
  ellipse(x, y, d, d);
}
