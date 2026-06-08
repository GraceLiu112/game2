void game(){
  theme.play();
  background(riceColor);
  
  //centr line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  
  //scoreboard
  textSize(50);
  fill(blue);
  text(leftscore, width/4, 100);
  fill(orange);
  text(rightscore, 3*width/4, 100);
  
  //draw paddles
  fill(blue);
  circle(leftx, lefty, leftd);
  fill(orange);
  circle(rightx, righty, rightd);
  
  //ball
  fill(pink);
  circle(ballx, bally, balld);
  
  //move paddles
  if(wkey == true) lefty = lefty - 5;
  if(skey == true) lefty = lefty + 5;
  if(player == 1){
    if(bally < righty-4) righty = righty - 4;
    if(bally > righty+4) righty = righty + 4;
  }
  if(player == 2){
    if(upkey == true) righty = righty - 5;
    if(downkey == true) righty = righty + 5;
  }
  
  //move ball
  if(timer > 0){
    timer = timer -1;
  }
  else{
    ballx = ballx + vx;
    bally = bally + vy;
  }
  
  //scoring
  if(ballx < -balld/2){
    rightscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    timer = 100;
  }
  if(ballx > width + balld/2){
    leftscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    timer = 100;
  }
  
  //bouncing
  if(bally <= balld/2 || bally >= height-balld/2){
    vy = vy * -1;
  }
  if(dist(ballx, bally, rightx, righty) < balld/2 + rightd/2){
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    if(vx > -2){
      vx = -2;
    }
    ballx = rightx - (balld/2 + rightd/2) - 1;
  }
  if(dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2){
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
    if(vx < 2){
      vx = 2;
    }
    ballx = leftx + (balld/2 + leftd/2) + 1;
  }
  
  if(leftscore == 3 || rightscore == 3){
    mode = GAMEOVER;
  }
}

void gameClicks(){
  mode = PAUSE;

}
