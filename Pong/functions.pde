void update() {
  
  timer = timer + 1;
  if (timer > 100) {
    ball.add(ball_v);
  }
  
  
  
}

void reset() {
  
  timer = 0;
  ball_v = new PVector(random(-1, 1), random(-1, 1));
  ball_v.normalize();
  ball_v.mult(4.5);
  ball = new PVector(width/2, height/2);
   
}
