void intro() {
  score = 0;
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i = i + 1;
  }
  
  paddlex = width/2;
  paddley = height;
  paddled = 200;
  
  ballx = width/2;
  bally = height/2;
  balld = 5;
  ballvx = 0;
  ballvy = 5;
  
  fill(#000000);
  rect(0, 0, 800, 800);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 540, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("NORMAL", 400, 560);
  fill(#000000);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 610, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("HARD", 400, 630);
  textSize(120);
  text("BRICKBREAK", 400, 330);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 540 && mouseY < 590) {
    mode = GAMEMEDIUM;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 610 && mouseY < 660) {
    mode = GAMEHARD;
  }
}
