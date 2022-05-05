void pause() {
  fill(#000000);
  strokeWeight(0);
  stroke(#000000);
  rect(750, 0, 50, 50);
  stroke(color4);
  strokeWeight(5);
  fill(#FFFFFF);
  triangle(760, 10, 760, 40, 790, 25);
}

void pauseClicks() {
  if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    mode = GAME;
  }
}
