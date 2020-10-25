void game() {
  
  background(0);
  
  //draw score counters
  text(p1score, 300, 100);
  text(p2score, 500, 100);
  
  // draw paddles
  rect(left_paddle.x, left_paddle.y - 45, 40, 90);
  rect(right_paddle.x, right_paddle.y - 45, 40, 90);
  
  //move paddles
  if (wkey == true) left_paddle.y -= 10;
  if (skey == true) left_paddle.y += 10;
  
  if (AI == false) {
    if (upkey == true) right_paddle.y -= 10;
    if (downkey == true) right_paddle.y += 10;
  } else {
    AI();
  }
  
  //ball
  update();
  circle(ball.x, ball.y, ball_d);
  
  //code to bounce the ball
  collision();
  if (ball_v.mag() > 40) ball_v.setMag(40);
  
}

void gameClicks() {
  
  mode = PAUSE;
  
  
  
  
}
