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
  rect(300, 550, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("START", 400, 570);
  textSize(120);
  text("BRICKBREAK", 400, 330);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    mode = GAME;
  }
}
