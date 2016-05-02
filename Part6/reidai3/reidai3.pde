size(800, 600);
background(255);
int[] data = {132, 250, 92, 40};
int[] gray = {160, 80, 200, 100};

int x = 100;
for(int i = 0; i < data.length; i++){
  fill(gray[i]);
  rect(x, height/2-25, data[i], 50);
  x += data[i];
}
