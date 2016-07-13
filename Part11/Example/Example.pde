import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


 Minim minim ; // M i n i m型の変数m i n i mの宣言
 AudioPlayer player ; // A u d i o P l a y e r 型 の 変 数 p l a y e r の 宣 言
 FFT fft ; // F F T 型 の 変 数 f f t の 宣 言

 void setup (){
 // 処 理 3 ( ウ イ ン ド ウ の 作 成 )
 size (513 , 200); // 513×200 の ウ イ ン ド ウ を 作 成
 // 処 理 4 ( M i n i m 型 の 変 数 m i n i m の イ ン ス タ ン ス の 生 成 )
 minim = new Minim ( this ); // M i n i m 型 の 変 数 m i n i m の イ ン ス タ ン ス を 生 成
 // 処 理 5 ( 音 声 フ ァ イ ル を 扱 う た め の 設 定 ) バ ッ フ ァ サ イ ズ は1 0 2 4
 player = minim . loadFile ( "../sounddata/wa.mp3" , 1024);
 // 処 理 6 ( F F T 型 の 変 数 f f t の イ ン ス タ ン ス の 生 成 )
 fft = new FFT ( player . bufferSize () , player . sampleRate ());
 // F F T 型 の 変 数 f f t の イ ン ス タ ン ス を 生 成
 // 解 析 を 行 う サ ン プ ル 点 の 数 を player . bufferSize () に 設 定
 // 解 析 を 行 う 信 号 の サ ン プ リ ン グ 周 波 数 を player . sampleRate () に 設 定 ．
 player . play ();
 }

 void draw (){
 // 処 理 7 ( 色 の 設 定)
 background (255); // 背 景 を 白 に 設 定
 stroke (0); // 線 の 色 を 黒 に 設 定
 // 処 理 8 ( F F T の 実 行 )
fft . forward ( player . mix ); // 左 右 の 信 号 を 合 わ せ た 信 号( player . mix ) に 対 し て F F T を 実 行 　
 // 処 理 9 ( ス ペ ク ト ラ ム の 描 画)

 int highest = 0; // ス ペ ク ト ラ ム の 値 が 最 大 と な る k の 値 を 求 め る た め の 変 数
 // h i g h e s t を 宣 言 し ， 0 で 初 期 化
 for ( int k = 0; k < fft . specSize (); k ++){ // fft . specSize () 回 繰 り 返 す
 line (k , height , k , height - fft . getBand ( k )); // ス ペ ク ト ラ ム の 値 に 応 じ た
// 長 さ の 線 を 描 画
 // ス ペ ク ト ル の 値 が 最 大 と な る k の 値 を 求 め る
 if ( fft . getBand ( k ) > fft . getBand ( highest )){
 highest = k ;
}
 }
 text ( highest * player . sampleRate ()/ player . bufferSize () ,100 , 20);
 // ス ペ ク ト ル の 値 が 最 大 と な る k に 対 応 す る 周 波 数 を (100 ,20) の 位 置 に 描 画
 float t = map(mouseX, 0, width, 0, 1);
 beat.detect(player.mix);
 fill(#1A1F18, 20);
 noStroke();
 rect(0, 0, width, height);
 translate(width/2, height/2);
 noFill();
 fill(-1, 10);
 if (beat.isOnset()) rad = rad*0.9;
 else rad = 70;
 ellipse(0, 0, 2*rad, 2*rad);
 stroke(-1, 50);
 int bsize = player.bufferSize();
 for (int i = 0; i < bsize - 1; i+=5)
 {
   float x = (r)*cos(i*2*PI/bsize);
   float y = (r)*sin(i*2*PI/bsize);
   float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
   float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
   line(x, y, x2, y2);
 }
 beginShape();
 noFill();
 stroke(-1, 50);
 for (int i = 0; i < bsize; i+=30)
 {
   float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
   float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
   vertex(x2, y2);
   pushStyle();
   stroke(-1);
   strokeWeight(2);
   point(x2, y2);
   popStyle();
 }
 endShape();
 }

 void stop (){ // プ ロ グ ラ ム が 終 了 さ れ る と き に 呼 び 出 さ れ る 関 数
 // 処 理 10 ( プ ロ グ ラ ム 終 了 時 の 処 理)
 player . close (); // 音 声 入 力 用 の 変 数 p l a y e r を 閉 じ る
 minim . stop (); // m i n i mを終了
 super . stop (); // プ
}
