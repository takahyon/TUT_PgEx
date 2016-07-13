import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

 Minim minim ; // M i n i m型の変数m i n i mの宣言
 AudioPlayer player ; // A u d i o P l a y e r 型 の 変 数 p l a y e r の 宣 言
 float amp = 10.0; // 信 号 の 増 幅 率 ( 例 題1 で 決 定 し た 値 を 使 用 )

 void setup (){
size (800 , 800); // 800×800 の ウ イ ン ド ウ を 作 成
minim = new Minim ( this ); // M i n i m 型 の 変 数 m i n i m の イ ン ス タ ン ス を 生 成
 player = minim . loadFile ("../sounddata/music.wav", width );
 player . play (); // 再 生 開 始
 }

 void draw (){
 // 処 理 1 ( 背 景 色 と 線 の 色 の 設 定 )
 background (0); // 背 景 色 を 黒 に 設 定
 stroke (255); // 線 の 色 を 白 に 設 定
 // 処 理 2 ( 変 数 の 宣 言 )
 int maxL = height /2; // 線 の 長 さ の 最 大 値 を h ei g h t /2 に 設 定
 float angle = 0; // 線 を 描 画 す る 角 度 ( 0 で 初 期 化 )
 int centerX = width/2; // ウ イ ン ド ウ の 中 心 の x 座 標 cen te rX ( i n t 型 )
 int centerY = height/2; // ウ イ ン ド ウ の 中 心 の y 座 標 cen te rY ( i n t 型 )

 for ( int i = 0; i < player . bufferSize (); i ++){ // p l a y e r . b u f f e r S i z e ( ) 回 繰 り 返 す
 // 処 理 3 ( 信 号 の 大 き さ に 応 じ た 長 さ の 直 線 の 描 画 )
 float lineL = abs ( player . left . get ( i )) * maxL * amp ; // 左 側 の i 番 目 の 信 号
 // に 応 じ て 線 の 長 さ を 決 定
 float x = centerX+lineL*cos(angle); // 中 心 か ら 距 離 が l i n e L ， 角 度 が a n g l e の 点 の x 座 標 x ( f l o a t 型 )
 float y = centerY+lineL*sin(angle); // 中 心 か ら 距 離 が l i n e L ， 角 度 が a n g l e の 点 の y 座 標 y ( f l o a t 型 )
 line(centerX,centerY,x,y); // 中 心 ( centerX , cen te rY ) と ( x , y ) を 結 ぶ 直 線 を 描 画

 // 処 理 4 ( 角 度 の 更 新 )
 angle += TWO_PI / player . bufferSize (); // 角 度 angleをTWO PI / p l a y e r . b u f f e r S i z e ( ) だ け
 // 増 や す
 }
}


 void stop (){ // プ ロ グ ラ ム が 終 了 さ れ る と き に 呼 び 出 さ れ る 関 数
 player . close (); // 音 声 入 力 用 の 変 数 p l a y e r を 閉 じ る
 minim . stop (); // mi nimを終了
 super . stop (); // プ ロ グ ラ ム の 終 了 処 理
 }
