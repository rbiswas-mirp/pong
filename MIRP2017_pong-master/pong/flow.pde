void rightLose() {
       leftScore+=1; 
    displayScores();
    delay(100);
    ballVx=-ballVx;
   
}

void leftLose() {
       rightScore+=1;
    displayScores();
    delay(100);
    ballVx=-ballVx;
    
}