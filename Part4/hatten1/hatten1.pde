int sc;
int ls = 1;
int sx;
int sy;
int co = 0;


void setup() {
  size(800, 600);
}

void draw() {

  background(co, co, co);
  stroke(255,0,0);

  if (mouseX < 400 && mouseY < 300 ){
       sc = 1;
       sx = 0;
       sy = 0;

       if (ls == 3) {
        co += 16;
       } else if (ls == 2) {
         co -= 16;
       }
  } else if (mouseX > 400 && mouseY < 300){
      sc = 2;
      sx = 400;
      sy = 0;

      if (ls == 1) {
        co += 16;
      } else if (ls == 4) {
         co -= 16;
      }
  } else if (mouseX < 400 && mouseY > 300 ){
      sc = 3;
      sx = 0;
      sy = 300;

      if (ls == 4) {
        co += 16;
      } else if (ls == 1) {
         co -= 16;
      }
  } else if (mouseX > 400 && mouseY > 300){
      sc = 4;
      sx = 400;
      sy = 300;

      if (ls == 2) {
      co += 16;
      } else if (ls == 3) {
         co -= 16;
      }
  }

    if (co > 255) {
      co = 255;
    } else if (co < 0) {
      co = 0;
    }

    if (co == 0) {
      fill(0, 0, 0);
    } else if (co == 255) {
      fill(255, 255, 255);
    } else {
      fill(186, 193, 124);
    }

    rect(sx, sy, 400, 300);

    noStroke();
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 100, 100);
    ls = sc;
}
