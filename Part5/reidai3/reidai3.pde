void setup(){
  size(800, 600);
  for(int i = 0; i < 100; i++){
    randomLine();
  }
}

void randomLine(){
  line(random(width),random(height),random(width),random(height));
}
