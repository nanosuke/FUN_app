boolean isOverlap(float x1, float y1, float w1, float h1, // when the two rect overlap each other, returns true
  float x2, float y2, float w2, float h2) {
  return x1 < x2+w2 && x2 < x1+w1 && y1 < y2+h2 && y2 < y1+h1;
}

/*
 returns 0 when the ball doesn't bounce
 returns 1 when the ball bounces in the x-axis direction
 returns 2 when the ball bounces in the y-axis direction
 returns 3 when the ball bounces in both the x and y-axis direction
 */
int blockHitCheck(float x, float y, float w, float h, // block's place and size
  float bx, float by, float bw, float bh, float dx, float dy) { // ball's place, size, speed
  int xflag = 0, yflag = 0;
  if (!isOverlap(x, y, w, h, bx+dx, by+dy, bw, bh)) {
    return 0; // when block and ball didn't overlap, return 0
  }
  if (isOverlap(x, y, w, h, bx+dx, by, bw, bh)) xflag = 1; // when block and ball overlapped in x-axis direction, return 1
  se2.amp(0.005);
  se2.play(); // play SE2 when ball bumped into block
  if (isOverlap(x, y, w, h, bx, by+dy, bw, bh)) yflag = 2; //  when block and ball overlapped in y-axis direction, return 2
  se2.play();
  if (xflag + yflag > 0) {  // when block and ball overlapped in x and y-axis direction, return 3
    se2.play(); // play SE2 when ball bumped into block
    return xflag + yflag;
  }
  return 3;
}
