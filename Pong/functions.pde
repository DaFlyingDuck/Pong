void update() {
  
  timer = timer + 1;
  if (timer > 100) {
    ball.add(ball_v);
  }
  
  
  
}

void reset() {
  
  timer = 0;
  ball_v = new PVector(random(-1, 1), random(-1, 1));
  if (ball_v.x > -0.2 && ball_v.x < 0.2) {
    ball_v = new PVector(random(-1, 1), random(-1, 1));
  }
  ball_v.normalize();
  ball_v.mult(6);
  ball = new PVector(width/2, height/2);
  left_paddle = new PVector(20, height/2);
  right_paddle = new PVector(740, height/2);
   
}
