void gameover() {
  
  if (p1score == 3) {
    fill(255);
    textSize(120);
    text("LEFT WINS", 400, 300);
  } else if (p2score == 3) {
    fill(255);
    textSize(120);
    text("RIGHT WINS", 400, 300);
  }
  
  p1score = 0;
  p2score = 0;
  
  
}


void gameoverClicks() {
  
  mode = INTRO;
  
  
  
}
