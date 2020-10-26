void collision() {
  
  //Collision with vertical walls
  if (ball.y + ball_d/2 >= height || ball.y - ball_d/2 <= 0) {
    ball_v.y = ball_v.y * -1;
    wall.rewind();
    wall.play();
  }
  
  // Scoring Collision
  if (ball.x - ball_d/2 <= 0) {
    
    p2score ++;
    reset();
    point.rewind();
    if (p2score >= 3) {
      mode = GAMEOVER;
      clapping.rewind();
      clapping.play();
    } else {
      point.play();
    }

  }
    
  if (ball.x + ball_d/2 >= width) {
    
    p1score ++;
    reset();
    point.rewind();
    if (p1score >= 3) {
      mode = GAMEOVER;
      clapping.rewind();
      clapping.play();
    } else {
      point.play();
    }
    
  }

  // Limiting paddles to within walls
  if (left_paddle.y - 45 < 55) left_paddle.y = 100;
  if (left_paddle.y + 45 > 545) left_paddle.y = 500;
  
  if (right_paddle.y - 45 < 55) right_paddle.y = 100;
  if (right_paddle.y + 45 > 545) right_paddle.y = 500;


  // Paddle and Ball Collision
  
  // Left Paddle Collision
  

  if (ball.x < 60 + ball_d/2) {
  
 
    if (ball.y >= left_paddle.y - 45 - ball_d/2 && ball.y < left_paddle.y - 27) { // outer edge
      
      leftpaddle.rewind();
      leftpaddle.play();
      Angle = new PVector(1, 0);
      Angle.rotate(radians(-50));
      Angle.setMag(ball_v.mag() * 1.08);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= left_paddle.y - 27 && ball.y < left_paddle.y - 9) { //inner area
      
      leftpaddle.rewind();
      leftpaddle.play();
      Angle = new PVector(1, 0);
      Angle.rotate(radians(-30));
      Angle.setMag(ball_v.mag() * 1.04);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= left_paddle.y - 9 && ball.y < left_paddle.y + 9) { // middle
      
      leftpaddle.rewind();
      leftpaddle.play();
      Angle = new PVector(1, 0);
      Angle.setMag(ball_v.mag() * 1.01);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= left_paddle.y + 9 && ball.y < left_paddle.y + 27) { //inner area
      
      leftpaddle.rewind();
      leftpaddle.play();
      Angle = new PVector(1, 0);
      Angle.rotate(radians(30));
      Angle.setMag(ball_v.mag() * 1.04);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= left_paddle.y + 27 && ball.y <= left_paddle.y + 45 + ball_d/2) { // outer edge
      
      leftpaddle.rewind();
      leftpaddle.play();
      Angle = new PVector(1, 0);
      Angle.rotate(radians(50));
      Angle.setMag(ball_v.mag() * 1.08);
      ball_v = new PVector(Angle.x, Angle.y);
      
    }
    
  }

  
  //Right Paddle Collision
  

  if (ball.x > 740 - ball_d/2) {
  
  
    if (ball.y >= right_paddle.y - 45 - ball_d/2 && ball.y < right_paddle.y - 27) { // outer edge
      
      rightpaddle.rewind();
      rightpaddle.play();
      Angle = new PVector(-1, 0);
      Angle.rotate(radians(50));
      Angle.setMag(ball_v.mag() * 1.4);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= right_paddle.y - 27 && ball.y < right_paddle.y - 9) { //inner area

      rightpaddle.rewind();
      rightpaddle.play();
      Angle = new PVector(-1, 0);
      Angle.rotate(radians(30));
      Angle.setMag(ball_v.mag() * 1.3);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= right_paddle.y - 9 && ball.y < right_paddle.y + 9) { // middle
      
      rightpaddle.rewind();
      rightpaddle.play();
      Angle = new PVector(-1, 0);
      Angle.setMag(ball_v.mag() * 1.25);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= right_paddle.y + 9 && ball.y < right_paddle.y + 27) { //inner area
      
      rightpaddle.rewind();
      rightpaddle.play();
      Angle = new PVector(-1, 0);
      Angle.rotate(radians(-30));
      Angle.setMag(ball_v.mag() * 1.3);
      ball_v = new PVector(Angle.x, Angle.y);
      
    } else if (ball.y >= right_paddle.y + 27 && ball.y <= right_paddle.y + 45 + ball_d/2) { // outer edge
      
      rightpaddle.rewind();
      rightpaddle.play();
      Angle = new PVector(-1, 0);
      Angle.rotate(radians(-50));
      Angle.setMag(ball_v.mag() * 1.4);
      ball_v = new PVector(Angle.x, Angle.y);
      
    }
    
  }
  
  


}
