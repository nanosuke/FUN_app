int block[] = new int[10]; // number of blocks
float block_w, block_h = 40.0; // block's size

void initBlocks(int a) { // initialize blocks, a = durable value
  for (int i = 0; i < block.length; i++) {
    block[i] = a;
  }
  block_w = width / block.length; // すべてのブロックの幅の和 ＝ width
}


void checkBlocks(float a, float b) { // bounce when ball bumped into blocks, calculate durable value a=block's width, b=block's height
  for (int i = 0; i < block.length; i++) {
    if (block[i] > 0) {
      int ret = blockHitCheck(i*a, 40, a, b, ball_x, ball_y, ball_w, ball_h, ball_dx, ball_dy); // block's place, block's size, ball's place, ball's size, ball's acceleration
      if (ret > 0) {
        if (ret == 1) { // if the ball his block in the x-axis direction, ball bounces and block's durable value decreases
          ball_dx = -ball_dx;
          block[i]--;
        } else if (ret == 2) { // if the ball his block in the y-axis direction, ball bounces and block's durable value decreases
          ball_dy = -ball_dy;
          block[i]--;
        } else if (ret == 3) { // if the ball his block in both the x and y-axis direction, ball bounces and block's durable value decreases
          ball_dx = -ball_dx;
          ball_dy = -ball_dy;
          block[i]--;
        }
        return;
      }
    }
  }
}


void showBlocks13(int c, int d, int e, int f) { // show blocks and durable value in stage1, stage2  c = block's color, d,e,f = text's color
  for (int i = 0; i < block.length; i++) {
    if (block[i] > 0 ) { // if block's durable value > 0, show block
      fill(d, e, f);
      textSize(30);
      text(block[i], i * block_w, block_h); // show durable value
      stroke(0, 70);
      strokeWeight(3);
      if (block[i] ==2) { // if block's durable value = 2, block's color is dark
        fill(c, 50, 100);
      } else if (block[i] ==1) { // if block's durable value = 1, block's color is light
        fill(c, 30, 100);
      }
      rect(i * block_w, 40, block_w, block_h); // show blocks
    }
  }
}

void showBlocks2() { // show boys as blocks in stage2
  for (int i = 0; i < block.length; i++) {
    if (block[i] == 0 ) { // if block's durable value = 0, show boy3
      image(boy3, i*boy3.width+50, 40, boy3.width, boy3.height);
    } else if (block[i] ==1) { // if block's durable value = 1, show boy2
      image(boy2, i*boy2.width, 40, boy2.width, boy2.height);
    } else if (block[i] ==2) { // if block's durable value = 2, show boy1
      image(boy1, i*boy1.width, 40, boy1.width, boy1.height);
    }
  }
}
