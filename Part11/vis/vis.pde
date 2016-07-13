import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
FFT fft;


//beat = new BeatDetect();
int  r = 200;
float rad = 70;
boolean s = false;
float[] angle;
float[] y, x;

void setup(){
  //size(screen.width, screen.height, P3D);
   size(1280,768,P3D);
  minim = new Minim(this);
  player = minim . loadFile ("../sounddata/wa.mp3",1024);
  fft = new FFT(player.bufferSize(),player.sampleRate());
  //それぞれの変数に[fft.sizeSize]
  y = new float[fft.specSize()];
  x = new float[fft.specSize()];
  angle = new float[fft.specSize()];
  frameRate(240);
  player.play();
}

void draw(){
  background(0);
  fft.forward(player.mix);
  doubleAtomicSprocket();
  stroke (255); // 線 の 色 を 黒 に 設 定
  // 処 理 8 ( F F T の 実 行 )
 fft . forward ( player . mix ); // 左 右 の 信 号 を 合 わ せ た 信 号( player . mix ) に 対 し て F F T を 実 行 　
  // 処 理 9 ( ス ペ ク ト ラ ム の 描 画)

  int highest = 0; // ス ペ ク ト ラ ム の 値 が 最 大 と な る k の 値 を 求 め る た め の 変 数
  // h i g h e s t を 宣 言 し ， 0 で 初 期 化
  for ( int k = 0; k < fft . specSize (); k ++){ // fft . specSize () 回 繰 り 返 す
    strokeWeight(12);
  line (k*2 , height , k*2 , height - fft . getBand ( k )); // ス ペ ク ト ラ ム の 値 に 応 じ た
 // 長 さ の 線 を 描 画
  // ス ペ ク ト ル の 値 が 最 大 と な る k の 値 を 求 め る
  if ( fft . getBand ( k ) > fft . getBand ( highest )){
  highest = k ;
 }

//  text ( highest * player . sampleRate ()/ player . bufferSize () ,100 , 20);
  // ス ペ ク ト ル の 値 が 最 大 と な る k に 対 応 す る 周 波 数 を (100 ,20) の 位 置 に 描 画

}

void doubleAtomicSprocket() {
  noStroke();
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < fft.specSize() ; i++) {
    y[i] = y[i] + fft.getBand(i)/100;
    x[i] = x[i] + fft.getFreq(i)/100;
    angle[i] = angle[i] + fft.getFreq(i)/2000;
    rotateX(sin(angle[i]/2));
    rotateY(cos(angle[i]/2));
    //    stroke(fft.getFreq(i)*2,0,fft.getBand(i)*2);
    fill(fft.getFreq(i)*2, 0, fft.getBand(i)*2);
    pushMatrix();
    translate((x[i]+50)%width/3, (y[i]+50)%height/3);
    box(fft.getBand(i)/20+fft.getFreq(i)/15);
    popMatrix();
  }
  popMatrix();
  pushMatrix();
  translate(width/2, height/2, 0);
  for (int i = 0; i < fft.specSize() ; i++) {
    y[i] = y[i] + fft.getBand(i)/1000;
    x[i] = x[i] + fft.getFreq(i)/1000;
    angle[i] = angle[i] + fft.getFreq(i)/100000;
    rotateX(sin(angle[i]/2));
    rotateY(cos(angle[i]/2));
    //    stroke(fft.getFreq(i)*2,0,fft.getBand(i)*2);
    fill(0, 255-fft.getFreq(i)*2, 255-fft.getBand(i)*2);
    pushMatrix();
    translate((x[i]+250)%width, (y[i]+250)%height);
    box(fft.getBand(i)/20+fft.getFreq(i)/15);
    popMatrix();
  }
  popMatrix();
}

void stop()
{
  player.close();
  minim.stop();

  super.stop();
}
