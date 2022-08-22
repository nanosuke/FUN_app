float racket_w = 100.0, racket_h = 3.0; // racket's size

void checkAndShowRacket12(float racket_y) { // racket_y = racket1's place in y-axis
  float racket_x = mouseX-(racket_w/2); // racket_x = racket's left end (mouse is in the middle of racket)

  if (racket_x + racket_w > width) { // correct when racket is in the right end
    racket_x = width - racket_w;
  } 
  if (racket_x < 0) { // correct when racket is on the left end
    racket_x=0;
  }

  if (blockHitCheck(racket_x, racket_y, racket_w, racket_h, ball_x, ball_y, ball_w, ball_h, ball_dx, ball_dy) > 0) { // ball bounces when bumped into racket1
    ball_dy = -ball_dy;
  }

  noStroke();
  rect(racket_x, racket_y, racket_w, racket_h); // show racket
}
