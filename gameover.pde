void gameover() {
  stroke(#000000);
  fill(#000000);
  rect(0, 0, 800, 800);
  
  String FinalScore = scoreleft + " : " + scoreright;
  textSize(44);
  fill(#FFFFFF);
  text(FinalScore, 400, 178);
  
  String leftwins = "Player One Wins";
  String rightwins = "Player Two Wins";
  
  if (scoreleft == 11) {
    text(leftwins, 400, 322);
  }
  if (scoreright == 11) {
    text(rightwins, 400, 322);
  }
  
  stroke(#FFFFFF);
  strokeWeight(5);
  fill(#000000);
  rect(300, 450, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("RESTART", 400, 470);
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 500) {
    mode = INTRO;
  }
}
