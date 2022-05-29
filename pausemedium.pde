void pausemedium() {
  strokeWeight(0);
  stroke(#000000);
  fill(#000000);
  rect(750, 0, 50, 50);
  strokeWeight(5);
  stroke(#000000);
  fill(#FFFFFF);
  triangle(760, 10, 760, 40, 790, 25);
}

void pausemediumClicks() {
  if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    mode = GAMEMEDIUM;
  }
}
