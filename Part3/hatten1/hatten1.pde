int screen;
int lasscreen = 1;
int sx;
int sy;
int scolor = 0;


void setup() {
  size(800, 600);
}

void draw() {
  
  background(0, 0, 0);
  noStroke();
  
  if (mouseX < 400) {
    if (mouseY < 300) {
       screen = 1;
       sx = 0;
       sy = 0;
       
       if (lasscreen == 3) {
        scolor += 16;
       } else if (lasscreen == 2) {
         scolor -= 16;
       }
    }
  }
  
  if (mouseX > 400){
    if (mouseY < 300) {
      screen = 2;
      sx = 400;
      sy = 0;
      
      if (lasscreen == 1) {
        scolor += 16;
      } else if (lasscreen == 4) {
         scolor -= 16;
      }
    }
  }
  
  if (mouseX < 400 ){
    if (mouseY > 300 ) {
      screen = 3;
      sx = 0;
      sy = 300;
      
      if (lasscreen == 2) {
        scolor += 16;
      } else if (lasscreen == 1) {
         scolor -= 16;
      }
    }
  }
  
  if (mouseX > 400){
    if (mouseY > 300) {
      screen = 4;
      sx = 400;
      sy = 300;
      
      if (lasscreen == 2) {
      scolor += 16;
      } else if (lasscreen == 3) {
         scolor -= 16;
      }
    }
  }
  
    //カラーが２５５以上０以下にならないように
    if (scolor > 255) {
      scolor = 255;
    } else if (scolor < 0) {
      scolor = 0;
    }
    
    //四角形の描写
    fill(scolor, scolor, scolor);
    rect(sx, sy, 400, 300);
    
    //ポインタの描写
    fill(255 - scolor, 255 - scolor, 255 - scolor);
    ellipse(mouseX, mouseY, 100, 100);
    lasscreen = screen;
}