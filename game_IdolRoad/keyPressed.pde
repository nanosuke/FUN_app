void keyPressed() {
  if (key=='d') { // return to first page when 'd' is pressed
    page=0;
    initBall(); // reset ball's place and speed
    initBlocks(2); // reset block's durable value

    sound1.play(); // BGM1 starts
    sound1.loop();
    sound2.stop(); // stop other BGM
    sound3.stop();
    sound4.stop();
  }
  if (key=='f') { // show stage cleared when 'f' is pressed
    for (int i=0; i<block.length; i++) {
      block[i]=0; // delete all blocks
    }
  }
}
