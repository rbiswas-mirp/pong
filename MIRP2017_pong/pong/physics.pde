void updateBallVelocity() {
  ballVx+=0.001;
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions()
{
  if(left_up==true)
  leftPaddle+=-1;
  if(left_down==true)
  leftPaddle+=1;
  if(right_up==true)
  rightPaddle+=-1;
  if(right_down==true)
  rightPaddle+=1;
  if(leftPaddle>displayHeight-halflp)
  leftPaddle=displayHeight-halflp;
  if(rightPaddle>displayHeight-halfrp)
  rightPaddle=displayHeight-halfrp;
  if(leftPaddle==halflp)
  leftPaddle+=1;
  if(rightPaddle==halfrp)
  rightPaddle+=1;  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
}

void Bounce()
{
if(ballY>displayHeight-ballRadius)
{
ballY=displayHeight-ballRadius;
ballVy*=-coeff;
}
if(ballX>displayWidth-ballRadius)
{
ballX=displayWidth-ballRadius;
ballVx*=-coeff;
}
if(ballY<=0)
{
ballVy*=-coeff;
ballY+=ballRadius;
}
if(ballX<=0)
{
ballVx*=-coeff;
ballX+=ballRadius;
}
if(ballX-ballRadius<paddleWidth && ballY<leftPaddle + halflp && ballY > leftPaddle - halflp)
{
  ballVx*=-coeff;
  ballX+=ballRadius;
}
if(ballX-ballRadius<paddleWidth && ballY<rightPaddle + halfrp & ballY > rightPaddle - halfrp)
{
  ballVx*=-coeff;
  ballX+=ballRadius;
}
}