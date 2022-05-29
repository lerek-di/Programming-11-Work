void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAMEHARD) {
    gamehardClicks();
  } else if (mode == GAMEMEDIUM) {
    gamemediumClicks();
  } else if (mode == PAUSEHARD) {
    pausehardClicks();
  } else if (mode == PAUSEMEDIUM) {
    pausemediumClicks();
  } else if (mode == GAMEOVERHARD) {
    gameoverhardClicks();
  } else if (mode == GAMEOVERMEDIUM) {
    gameovermediumClicks();
  }
}
