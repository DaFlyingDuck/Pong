void intro() {
  
  background(180);
  
  //Title 
  textSize(65);
  fill(0);
  text("Pong", 400, 230);
  
  //score reset
  p1score = 0;
  p2score = 0;
  
  //Start buttons
  strokeWeight(4);
  if (mouseX >= 150 && mouseX <= 350 && mouseY >= 350 && mouseY <= 450) {
    stroke(255);
  } else {
    noStroke();
  }
  
  fill(0);
  rect(150, 350, 200, 100);
  fill(255);
  textSize(47);
  text("1 Player", 250, 390);

  strokeWeight(4);
  if (mouseX >= 350 && mouseX <= 550 && mouseY >= 350 && mouseY <= 450) {
    stroke(255);
  } else {
    noStroke();
  }
  fill(0);
  rect(450, 350, 200, 100);
  fill(255);
  textSize(47);
  text("2 Player", 550, 390);
  
  
}


void introClicks() {
  
  if (mouseX >= 150 && mouseX <= 350 && mouseY >= 350 && mouseY <= 450) {
    
    reset();
    AI = true;
    mode = GAME;
    
  } else if (mouseX >= 350 && mouseX <= 550 && mouseY >= 350 && mouseY <= 450) {
    
    reset();
    AI = false;
    mode = GAME;
    
  }
  
  
  
  
  
}
