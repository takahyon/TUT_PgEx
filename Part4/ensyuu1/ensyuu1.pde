void setup() {
  size(800, 600);
  strokeWeight(3);
  background(255);
}

void draw() {
  
  if(mousePressed) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void keyPressed() {
  
  switch(key){
    case '1':
      strokeWeight(1);
    break;
    case '2':
      strokeWeight(5);
    break;
    case '3':
      strokeWeight(10);
    break;
    case 'c':
      background(255);
    break;
  }
}