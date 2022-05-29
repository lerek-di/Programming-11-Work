void gamemedium() {
  clear();
  
  strokeWeight(5);
  stroke(#FFADF7);
  fill(#FFFFFF);
  circle(paddlex, paddley, paddled);
  if (akey == true && paddlex >= 100) paddlex = paddlex - 5;
  if (dkey == true && paddlex <= 700) paddlex = paddlex + 5;
  if (leftkey == true && paddlex >= 100) paddlex = paddlex - 5;
  if (rightkey == true && paddlex <= 700) paddlex = paddlex + 5;
  
  strokeWeight(0);
  stroke(#FFFFFF);
  fill(#FFFFFF);
  circle(ballx, bally, balld);
  ballx = ballx + ballvx;
  bally = bally + ballvy;
  
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrickmedium(i);
    }
    i++;
  }
  
  distx = paddlex - ballx;
  disty = paddley - bally;
  if (dist(ballx, bally, paddlex, paddley) <= paddled / 2 + balld / 2) {
    ballvx = (ballx - paddlex) / 10;
    ballvy = (bally - paddley) / 10;
  }
  
  if (ballx <= balld / 2) {
    ballvx = -1 * ballvx;
  }
  if (ballx >= 800 - balld / 2) {
    ballvx = -1 * ballvx;
  }
  if (bally <= balld / 2) {
    ballvy = -1 * ballvy;
  }
  if (bally >= 800 - balld / 2) {
    mode = GAMEOVERMEDIUM;
  }
  
  if (ballvy == 0) {
    mode = GAMEOVERMEDIUM;
  }
  
  String Score = "Score: " + score;
  textSize(25);
  fill(#FFFFFF);
  text(Score, 60, 25);
  
  strokeWeight(1);
  stroke(#000000);
  fill(#FFFFFF);
  rect(760, 10, 10, 30);
  rect(780, 10, 10, 30);
}

void gamemediumClicks() {
  if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    mode = PAUSEMEDIUM;
  }
}

void manageBrickmedium(int i) {
  if (y[i] == 100) {
    fill(color1);
  }
  if (y[i] == 150) {
    alive[i] = false;
  }
  if (y[i] == 200) {
    fill(color3);
  }
  if (y[i] == 250) {
    alive[i] = false;
  }
  if (y[i] == 300) {
    fill(color5);
  }
  if (y[i] == 350) {
    alive[i] = false;
  }
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) <= brickd / 2 + balld / 2) {
    ballvx = (ballx - x[i]) / 3;
    ballvy = (bally - y[i]) / 3;
    alive[i] = false;
    score = score + 1;
  }
  i = i + 1;
}
