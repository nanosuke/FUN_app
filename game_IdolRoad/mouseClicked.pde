void mouseClicked() { // switch pages when button pressed
  se1.play();  // clicked sound when button pressed
  se1.amp(0.05);

  if (mouseY > 420 && mouseY < 500) {    
    if (mouseX > 200 && mouseX < 400) { // button1
      sound1.stop(); // stop other BGM
      sound3.stop();
      sound4.stop();

      sound2.play(); // BGM2 starts
      sound2.loop(); 
      sound2.amp(0.05); 
      page = 1; // current page will be changed to 1
    } else if (mouseX > 450 && mouseX < 650) {
      sound1.stop(); // stop other BGM
      sound2.stop();
      sound4.stop();

      sound3.play(); // BGM3 starts
      sound3.loop();
      sound3.amp(0.05);
      page = 2; // current page will be changed to 2
    } else if (mouseX > 700 && mouseX < 900) {
      sound1.stop(); // stop other BGM
      sound2.stop();
      sound3.stop();

      sound4.play(); // BGM4 starts
      sound4.loop(); 
      sound4.amp(0.1);

      page = 3; // current page will be changed to 3
    } else {
      page = 0;
      sound1.play(); // BGM1 starts
      sound1.loop(); 
      sound1.amp(0.01);
    }
  }
}
