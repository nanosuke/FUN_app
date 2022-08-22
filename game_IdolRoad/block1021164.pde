import processing.sound.*;

SoundFile sound1, sound2, sound3, sound4; // BGMの変数
SoundFile se1, se2, se3; // SEの変数

int page=0; // switching pagesの変数
int clear1=0, clear2=0, clear3=0; // clear数の変数

public void settings() {
  size(1000, 700);
  //colorMode(HSB, 360, 100, 100); // change color mode
  PFont font=loadFont("SegoeUIBlack-Italic-48.vlw"); // change font
  //textFont(font);

  setUpSound(); // upload sounds
  setUpPic(); // upload pictures

  initBall(); // set ball's place and speed
  initBlocks(2); // set block's durable value
}

void draw() {  
  switch(page) { // switch when page=0
  case 0:
    firstPage();
    break;
  case 1: // swich when page=1
    stage1();
    break;
  case 2: // swich when page=2
    stage2();
    break;
  case 3: // swich when page=3
    stage3();
    break;
  default:
    break;
  }

  if (clear1*clear2*clear3==1) { // すべてのステージをクリアしたとき(clear1, clear2, clear3すべてが0でないとき)ゲームクリア画面を表示する
    endPage();
  }
}
