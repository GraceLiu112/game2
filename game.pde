void game(){
  background(0);
  stroke(255);
  fill(255);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  if(wkey == true) lefty = lefty - 5;
  if(skey == true) lefty = lefty + 5;
  if(wkey == true) righty = righty - 5;
  if(skey == true) righty = righty + 5;
  
  //ball
  circle(ballx, bally, balld);

}

void gameClicks(){
}
