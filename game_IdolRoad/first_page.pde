PImage back1, fan;
String stage_name[]={"stage 1", "stage 2", "stage 3"}; // button's name

void firstPage() { // start screen
  background(0, 0, 100);
  image(back1, 0, random(-2, 2)); // girl on background
  image(fan, -200, 550); // fan on background

  fill(15, 80, 40);
  textSize(100);
  text("Idol Road!", 50, height/5*2); // show title
  for (int i=0; i<3; i++) { // buttons
    strokeWeight(3);
    stroke(15, 80, 40);
    fill(0+i*20, 70, 100); // change color of buttons by place
    rect(200+i*250, 420, 200, 80, 10);
    fill(0, 0, 100);
    textSize(50);
    text(stage_name[i], 210+i*250, 475); // show button's name
  }
}
