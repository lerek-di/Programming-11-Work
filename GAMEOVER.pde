void gameover() {
  objects.clear();
  
  fill(#001840, 100);
  rect(width/2, height/2, width, height);
  
}

void gameoverClicks() {
  mode = INTRO;
}
