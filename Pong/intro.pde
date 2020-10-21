void intro() {
  
  //Title 
  textSize(65);
  fill(0);
  text("Pong", 400, 230);
  
  //score reset
  p1score = 0;
  p2score = 0;
  
  //Start button
  strokeWeight(4);
  if (mouseX >= 300 && mouseX <= 500 && mouseY >= 350 && mouseY <= 450) {
    stroke(255);
  } else {
    noStroke();
  }
  rect(300, 350, 200, 100);
  fill(255);
  text("Start", 400, 390);
  
  
}


void introClicks() {
  
  if (mouseX >= 300 && mouseX <= 500 && mouseY >= 350 && mouseY <= 450) {
    mode = GAME;
  } 
  
  
  
  
  
}
