float zure;

void racket3 (float r_y) { // racket shaped same as blocks (stage3)
  for (int i = 0; i < block.length; i++) {
    if (block[i] > 0) {
      zure=(block_w*4+width/2)*(mouseX-width/2)/(width/2); // correct racket3 when it comes to left and right ends
      rect(i * block_w+zure, r_y, block_w, racket_h); // show racket3
    }
  }
}

void checkAndShowRacket3(float r_y) { // racket3's place in y-axis
  for (int i=0; i<block.length; i++) { // ball bounces when bumped into racket3
    if (block[i]>0) {
      zure=(block_w*4+width/2)*(mouseX-width/2)/(width/2);
      if (blockHitCheck(i * block_w+zure, r_y, block_w, racket_h, ball_x, ball_y, ball_w, ball_h, ball_dx, ball_dy) > 0) {
        ball_dy = -ball_dy;
      }
    }
  }
  racket3(height-50); // show racket3
}
