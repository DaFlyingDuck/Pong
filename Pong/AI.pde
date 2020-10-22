void AI() {

  if (ball.x < 300 && right_paddle.y < 285 && (ball_v.x < 10 && ball_v.y > 3)) {

    right_paddle.y += 9;
    
  } else if (ball.x < 300 && right_paddle.y > 315 && (ball_v.x < 10 && ball_v.y > 3)) {

    right_paddle.y = right_paddle.y - 9;
    
  } else if (ball.x > 300) {

    if (ball.y - 9 > right_paddle.y) {

      if (ball.y > 500 && ball_v.y < -5 &&  ball.x < 500 && right_paddle.y > 400) {
        right_paddle.y = right_paddle.y - 9;
      } else {
        right_paddle.y += 9;
      }
      
    } else if (ball.y + 9 < right_paddle.y) {

      if (ball.y < 200 && ball_v.y > 5 &&  ball.x < 500 && right_paddle.y < 200) {
        right_paddle.y += 9;
      } else {
        right_paddle.y = right_paddle.y - 9;
      }
      
    }
  }
}
