PImage back4;

void stage3() {
  ball_x += ball_dx; // ball's acceleration
  ball_y += ball_dy+gravity;
  background(0);
  image(back4, 0, 0); // show girl on the background

  fill(255);
  blendMode(SCREEN);
  star(random(width), random(height), random(15)); // show stars randomely on the screen

  pushMatrix();
  turningBall(); // show the rainbow turning balls
  popMatrix();

  for (int n = 1; n < 40; n++) { // light around ball
    strokeWeight(n); // だんだん線の太さを大きくしていき、不透明の線を重ねて光を表す
    stroke(20, 100, 20, 50);
    ellipse(ball_x+ball_w/2, ball_y+ball_h/2, 15, 10);
  }

  fill(30, 70, 100);
  rect(ball_x, ball_y, ball_w, ball_h); // show ball

  checkBlocks(block_w, block_h);
  showBlocks13(355, 0, 0, 100);

  checkAndShowRacket3(height-50); // show racket in height-50(y-axis)

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

  fill(0, 0, 100);
  textSize(50);
  text("stage 3", 20, height-20); // show stage number

  showCleared();
  if (gameClear()) {
    clear3=1; // stage3クリア→clear3=1
  }

  blendMode(BLEND); // return settings
}

void star(float x, float y, float z) { // stars
  fill(random(40, 60), 100, 100);
  ellipse(x, y, z, z);
}
