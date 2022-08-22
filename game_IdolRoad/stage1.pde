PImage back2;

void stage1() {
  ball_x+=ball_dx; // ball's acceleration
  ball_y+=ball_dy;
  dance_x+=dance_dx; // dancing girl's speed in y-axis
  image(back2, 0, 0);

  fill(0, 50, 100);
  textSize(50);
  text("stage 1", 20, height-20); // show stage number

  fill(70, 10, 40);
  noStroke();
  rect(ball_x, ball_y, ball_w, ball_h); // show ball
  checkAndShowRacket12(height-50); // show racket in height-50(y-axis)

  checkBlocks(block_w, block_h);
  showBlocks13(215, 0, 50, 100);

  pushMatrix();
  turningBall(); // show the rainbow turning balls
  popMatrix();

  showDance(); // show dancing girl

  if (ball_y + ball_h >= height && !gameClear()) { // reset when ball falled
    initBall();
    initBlocks(2);
  }
  if (ball_x < 0 || ball_x+ball_w >=width) { // ball bounces when bumped into the wall
    ball_dx = -ball_dx;
  }
  if (ball_y < 0) { // ball bounces when bumped into the ceiling
    ball_dy = -ball_dy;
  }

  showCleared();
  if (gameClear()) {
    clear1=1; // stage1クリア→clear1=1
  }
}
