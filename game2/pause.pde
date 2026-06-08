void pause(){
  theme.pause();
  fill(red);
  textSize(150);
  text("PAUSE", 200, 340);
}

void pauseClicks(){
  theme.play();
  mode = GAME;
}
