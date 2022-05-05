void intro() {
  fill(#000000);
  rect(0, 0, 800, 800);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 350, 200, 50);
  fill(#FFFFFF);
  textSize(44);
  text("START", 400, 370);
  textSize(120);
  text("P O N G", 400, 180);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 400) {
    mode = GAME;
  }
}
