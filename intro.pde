void intro() {
  fill(#000000);
  rect(0, 0, 800, 800);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 320, 200, 50);
  fill(#FFFFFF);
  textSize(36);
  text("1 Player", 400, 340);
  fill(#000000);
  rect(300, 380, 200, 50);
  fill(#FFFFFF);
  textSize(36);
  text("2 Players", 400, 400);
  textSize(120);
  text("P O N G", 400, 180);
  
  scoreleft = 0;
  scoreright = 0;
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 370) {
    mode = ONEPLAYERGAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 380 && mouseY < 430) {
    mode = TWOPLAYERGAME;
  }
}
