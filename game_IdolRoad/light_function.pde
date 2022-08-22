int deg2;
void light() { // show turning round light
  pushMatrix();

  translate(width/2, height/2); // translate center coordinates to center
  blendMode(SCREEN);
  noStroke();
  fill(60, 50, 100);

  rotate(deg2*PI/180); // rotate the center coordinates
  ellipse(0, 200, 300, 300); // show circle

  popMatrix();

  deg2++;

  blendMode(BLEND); // return setting
}
