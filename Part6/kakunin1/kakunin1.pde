size(800, 600);

int[] x = {200, 550, 300, 600, 150};
int[] y = {100, 300, 400, 100, 200};
int[] d = {50, 100, 180, 80, 40};
for(int i = 0; i < x.length; i++){
  ellipse(x[i],y[i],d[i],d[i]);
}
