void intro() {
  background(191, 162, 133);
  fill(255, 0, 0);
  textSize(150);
  text("PONG", 215, 250);
  fill(255);

  if (mouseX > 100 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    strokeWeight(1);
    stroke(0);
  }
  rect(100, 350, 250, 100);


  if (mouseX > 455 && mouseX < 705 && mouseY > 350 && mouseY < 450) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    strokeWeight(1);
    stroke(0);
  }
  rect(455, 350, 250, 100);
  
  fill(0);
  textSize(50);
  text("1 Player", 140, 415);
  text("2 Player", 490, 415);

  //tactile
}

void introClicks() {
    if(mouseX > 100 && mouseX < 350 && mouseY > 350 && mouseY < 450){
      mode = GAME;
    }
    if(mouseX > 455 && mouseX < 705 && mouseY > 350 && mouseY < 450){
      mode = GAME;
    }
}
