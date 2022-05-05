void game() {
  clear();
  
  String Score = scoreleft + " : " + scoreright;
  textSize(44);
  text(Score, 400, 78);
  
  strokeWeight(5);
  fill(#FFFFFF);
  stroke(color1);
  circle(leftx, lefty, leftd);
  stroke(color2);
  circle(rightx, righty, rightd);
  stroke(color3);
  circle(puckx, pucky, puckd);
    
  puckx = puckx + puckvx;
  pucky = pucky + puckvy;
  
  if (wkey == true && lefty >= leftd / 2) lefty = lefty - 5;
  if (skey == true && lefty <= 600 - leftd / 2) lefty = lefty + 5;
  if (upkey == true && righty >= rightd / 2) righty = righty - 5;
  if (downkey == true && righty <= 600 - rightd / 2) righty = righty + 5;
  
  leftdistx = puckx - leftx;
  rightdistx = rightx - puckx;
  
  leftdisty = lefty - pucky;
  rightdisty = righty - pucky;
  
  lefttotaldist = sqrt(pow(leftdisty, 2) + pow(leftdistx, 2));
  righttotaldist = sqrt(pow(rightdisty, 2) + pow(rightdistx, 2));
  
  if (lefttotaldist <= leftd / 2 + puckd / 2) {
    puckvx = (10 * ((puckx - leftx) / lefttotaldist));
    puckvy = (10 * ((pucky - lefty) / lefttotaldist));
  } //<>//
  if (righttotaldist <= rightd / 2 + puckd / 2) {
    puckvx = (-10 * ((rightx - puckx) / righttotaldist));
    puckvy = (-10 * ((righty - pucky) / righttotaldist));
  }
  
  if (pucky <= puckd / 2) {
    puckvy = -1 * puckvy;
  }
  if (pucky >= 600 - puckd / 2) {
    puckvy = -1 * puckvy;
  }
  
  if (puckx <= leftx) {
    leftx = 0;
    lefty = height / 2;
    rightx = 800;
    righty = height / 2;
    puckx = width / 2;
    pucky = height / 2;
    puckvx = -10;
    puckvy = 0;
    scoreright = scoreright + 1;
  }
  if (puckx >= rightx) {
    leftx = 0;
    lefty = height / 2;
    rightx = 800;
    righty = height / 2;
    puckx = width / 2;
    pucky = height / 2;
    puckvx = 10;
    puckvy = 0;
    scoreleft = scoreleft + 1;
  }
  
  stroke(color4);
  rect(760, 10, 10, 30);
  rect(780, 10, 10, 30);
  
  if (scoreleft == 11 || scoreright == 11) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    mode = PAUSE;
  }
}
