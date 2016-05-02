size(800, 600);
background(255);
int[] data = {132, 250, 92, 40};

line(200,100,200,500);
for(int i = 0; i < data.length; i++){
  fill(150);
  rect(200, 125+100*i, data[i], 50);
}
