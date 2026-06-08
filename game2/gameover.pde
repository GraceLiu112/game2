void gameover(){
  theme.play();
  if(leftscore == 3){
    textSize(150);
    fill(green);
    text("LEFT", 260, 280);
    text("WINS", 240, 410);
  }
  if(rightscore == 3){
    textSize(150);
    fill(green);
    text("RIGHT", 210, 280);
    text("WINS", 240, 410);
  }

}

void gameoverClicks(){
  leftscore = 0;
  rightscore = 0;
  leftx = 0;
  lefty = height/2;
  
  rightx = width;
  righty = height/2;
  
  ballx = width/2;
  bally = height/2;
  
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  player = 0; 
  timer = 100;
  
  wkey = skey = upkey = downkey = false;
  theme.rewind();
  mode = INTRO;
}
