PImage back3, boy1, boy2, boy3;

void stage2() {
  ball_x+=ball_dx; // ball's acceleration
  ball_y+=ball_dy;
  image(back3, -200, 0);

  pushMatrix();
  turningBall(); // show the rainbow turning balls
  popMatrix();

  stroke(0, 50, 100);
  strokeWeight(5);
  rect(ball_x, ball_y, ball_w, ball_h); // show ball

  checkBlocks(boy1.width, boy1.height);
  showBlocks2(); // show blocks

  fill(0, 50, 100);
  checkAndShowRacket12(height-50); // show racket in height-50(y-axis)

  //light(); // show the spotlight turning around

  if (ball_y + ball_h >= height && !gameClear()) { // reset when ball falled
    initBall();
    initBlocks(2); // block's durable value = 2
  }
  if (ball_x < 0 || ball_x+ball_w >=width) { // ball bounces when bumped into the right wall
    ball_dx = -ball_dx;
  }
  if (ball_y < 0) { // ball bounces when bumped into the left wall
    ball_dy = -ball_dy;
  }

  fill(30, 50, 100);
  textSize(50);
  text("stage 2", 20, height-20); // show stage number

  showCleared();
  if (gameClear()) { // stage2クリア→clear2=1
    clear2=1;
  }
}
