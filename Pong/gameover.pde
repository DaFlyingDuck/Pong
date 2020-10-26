void gameover() {
  
  if (p1score == 3) {
    fill(255);
    textSize(90);
    text("LEFT WINS", 400, 300);
  } else if (p2score == 3) {
    fill(255);
    textSize(90);
    text("RIGHT WINS", 400, 300);
  }
  
  p1score = 0;
  p2score = 0;
  
  
}


void gameoverClicks() {
  
  clapping.pause();
  mode = INTRO;
  
  
  
}
