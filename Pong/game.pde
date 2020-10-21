void game() {
  
  background(0);
  
  //draw score counters
  text(p1score, 300, 100);
  text(p2score, 500, 100);
  
  // draw paddles
  rect(left_paddle.x, left_paddle.y - 45, 40, 90);
  rect(right_paddle.x, right_paddle.y - 45, 40, 90);
  
  //move paddles
  if (wkey == true) left_paddle.y -= 9;
  if (skey == true) left_paddle.y += 9;
  if (upkey == true) right_paddle.y -= 9;
  if (downkey == true) right_paddle.y += 9;
  
  
  //ball
  update();
  circle(ball.x, ball.y, ball_d);
  
  //code to bounce the ball
  collision();
  
  
}

void gameClicks() {
  
  
  
  
  
  
}
