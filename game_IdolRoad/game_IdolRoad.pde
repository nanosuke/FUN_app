float ball_x, ball_y, ball_w = 10, ball_h = 10, ball_dx, ball_dy, gravity; // ball's place, size, acceleration

void initBall() { // ball's first place and speed
  ball_x = 200; // ball's place
  ball_y = 200;
  ball_dx = 5; // ball's acceleration
  ball_dy = 5;
  gravity=0.98;
}
