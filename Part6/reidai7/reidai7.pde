int num = 16;
PImage[] images = new PImage[num];

void setup(){
  size(188, 188);
  frameRate(12);
  for(int i = 0; i < num; i++){
    images[i] = loadImage("run" + i + ".png"); //<=fix
  }
}

void draw(){
  int frame = frameCount % num;
  image(images[frame], 30, 30);
}
