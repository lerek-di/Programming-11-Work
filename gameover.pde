void gameover() {
  stroke(#000000);
  fill(#000000);
  rect(0, 0, 800, 800);
  
  String FinalScore = "Score: " + score;
  textSize(44);
  fill(#FFFFFF);
  text(FinalScore, 400, 278);
  
  stroke(#FFFFFF);
  strokeWeight(5);
  fill(#000000);
  rect(300, 500, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("RESTART", 400, 520);
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 550) {
    mode = INTRO;
  }
}
