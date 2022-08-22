int deg=0; // 回転する角度の変数

void turningBall() { // rainbow circles
  translate(ball_x+ball_w/2, ball_y+ball_h/2); // translate ball's place to center
  int i=0;
  rotate(deg*PI/180);
  while (i<8) { // change color of the circle to the place
    strokeWeight(10);
    noFill();
    stroke(i*40, 100, 100);
    ellipse(60*cos(QUARTER_PI*i), 60*sin(QUARTER_PI*i), 5, 5); // show circles around the center
    i++;
  }
  deg=deg+5; // turning speed
}
