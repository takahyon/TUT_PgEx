int monsterNum = 4;
int mSize = 100;
float [] monsterX = new float[monsterNum];
float [] monsterY = new float[monsterNum];
float [] dirX = new float[monsterNum];
float [] dirY = new float[monsterNum];
int [][] rgb = {{255,0,0},{255,128,0},{0,255,255},{255,128,255}};


void setup(){
  size(800, 600);

  for(int i = 0; i < monsterNum; i++){
    monsterX[i] = random(mSize/2, width - mSize/2);
    monsterY[i] = random(mSize/2, height - mSize/2);
  }
}

void draw() {
  background(100);
  for(int i = 0; i < monsterNum; i++){
    drawMonster(i);
    if(mousePressed){
      mos(i);
    }
    run(i);
    }
}

void drawMonster(int id){
  fill(rgb[id][0],rgb[id][1],rgb[id][2]);
  stroke(rgb[id][0],rgb[id][1],rgb[id][2]);

  //頭の描画
  arc(monsterX[id], monsterY[id], mSize, mSize, PI, TWO_PI, PIE);

  //足
  for (int x = 0; x <= mSize; x++) {
    float y = monsterY[id]+40+sin((frameCount+x)*(TWO_PI*2/mSize))*10;
    line(monsterX[id]-mSize/2+x, monsterY[id],
      monsterX[id]-mSize/2+x, y);
  }



  float eyeRX = monsterX[id]-20;
  float eyeLX = monsterX[id]+20;
  float eyeY  = monsterY[id]-20;
  float angleR = atan2(mouseX-eyeRX, mouseY-eyeY);
  float angleL = atan2(mouseX-eyeLX, mouseY-eyeY);
  float length = 10+5/2;

  fill(255);
  stroke(0);
  ellipse(eyeRX, eyeY, 30, 30);
  ellipse(eyeLX, eyeY, 30, 30);

  fill(0);
  ellipse(eyeRX+sin(angleR)*length, eyeY+cos(angleR)*length, 5, 5);
  ellipse(eyeLX+sin(angleL)*length, eyeY+cos(angleL)*length, 5, 5);

}

void randDir(int id){
    float angle = random(0, 360);
    dirX[id] = cos(radians(angle));
    dirY[id] = sin(radians(angle));
}

void mos(int id){
    float angle = atan2(mouseY-monsterY[id],mouseX-monsterX[id]);
    dirX[id]=cos(angle);
    dirY[id]=sin(angle);
}

void run(int id){
  monsterX[id] = monsterX[id]+dirX[id];
  monsterY[id] = monsterY[id]+dirY[id];
 if(monsterX[id]<mSize/2||monsterX[id]>width-mSize/2){
   dirX[id]=(-1)*dirX[id];
 }
  if(monsterY[id]<mSize/2||monsterY[id]>width-mSize/2){
   dirY[id]=(-1)*dirY[id];
 }

 if(random(0,61)<1){
   randDir(id);
 }
}
