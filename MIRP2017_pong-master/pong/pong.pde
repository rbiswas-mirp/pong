void setup() {
  size(displayWidth, displayHeight);
    resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
 
}

void drawGameScreen() {
  background(bgColor);
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  updateBallPosition();
  updatePaddlePositions();
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  // Display Scores
  displayScores();

 
}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX,ballY,2*ballRadius,2*ballRadius);
  ballX+=ballVx;
  ballY+=ballVy;
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
 rect(0,leftPaddle,paddleWidth,paddleLength,9,9,9,9); 
 rect(displayWidth-paddleWidth,rightPaddle,paddleWidth,paddleLength,9,9,9,9);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
  text(leftScore,displayWidth/4,50);
  text(rightScore,3*displayWidth/4,50);
  text("PONG RIPOFF!",1.38*displayWidth/4,100);
  text("______________",1.38*displayWidth/4,100);
}