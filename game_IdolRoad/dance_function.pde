PImage dance1, dance2; 
float dance_x=0, dance_dx=1; // dancing girl's speed, acceleration

void showDance() {
  image(dance1, dance_x, height*2/5);

  if (blockHitCheck(dance_x, height/5, dance1.width, dance1.height, ball_x, ball_y, ball_w, ball_h, ball_dx, ball_dy)>0) {
    image(dance2, dance_x, height*2/5);
  }


  if (dance_x < -100 || dance_x>=width-200) { // dance bounces when bumped into the wall
    dance_dx = -dance_dx;
    image(dance1, dance_x, height*2/5);
  }

  dance_x=dance_x+dance_dx;
}
