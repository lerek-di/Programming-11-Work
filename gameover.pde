void gameover() {
  stroke(#000000);
  fill(#000000);
  rect(0, 0, 800, 800);
  
  String FinalScore = scoreleft + " : " + scoreright;
  textSize(44);
  fill(color1);
  text(FinalScore, 396, 154);
  fill(color3);
  text(FinalScore, 404, 162);
  fill(#FFFFFF);
  text(FinalScore, 400, 158);
  
  String leftwins = "Player One Wins";
  String rightwins = "Player Two Wins";
  
  if (scoreleft == 11) {
    fill(color1);
    text(leftwins, 396, 298);
    fill(color3);
    text(leftwins, 404, 306);
    fill(#FFFFFF);
    text(leftwins, 400, 302);
  }
  if (scoreright == 11) {
    fill(color1);
    text(rightwins, 396, 298);
    fill(color3);
    text(rightwins, 404, 306);
    fill(#FFFFFF);
    text(rightwins, 400, 302);
  }
  
  fill(#000000);
  stroke(color1);
  strokeWeight(5);
  rect(296, 426, 200, 50);
  stroke(color3);
  strokeWeight(5);
  rect(304, 434, 200, 50);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 430, 200, 50);
  fill(color1);
  textSize(44);
  text("H O M E", 396, 446);
  fill(color3);
  textSize(44);
  text("H O M E", 404, 454);
  fill(#FFFFFF);
  textSize(44);
  text("H O M E", 400, 450);
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 430 && mouseY < 480) {
    mode = INTRO;
  }
}
