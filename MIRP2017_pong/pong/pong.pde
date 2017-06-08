void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  ballX=width/2;
  ballY=height/2;
  ballVx=BALL_VELOCITY;
  ballVy=0;
}

void draw()
{
  drawGameScreen();
}

void drawGameScreen()
{
  background(bgcolor);
  updateBallVelocity();
  Bounce();
  updateBallPosition();
  updatePaddlePositions();
  drawBall();
  drawPaddles();
  // Display Scores
}

void drawBall() 
{

  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

void drawPaddles() 
{
  fill(paddlecolor1);
  rectMode(CENTER);
  rect(10, leftPaddle, paddleWidth, paddleLength, 30);
  fill(paddlecolor2);
  rectMode(CENTER);
  rect(displayWidth-10, rightPaddle, paddleWidth, paddleLength, 30);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}