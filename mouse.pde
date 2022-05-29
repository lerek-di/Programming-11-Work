void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == ONEPLAYERGAME) {
    oneplayergameClicks();
  } else if (mode == TWOPLAYERGAME) {
    twoplayergameClicks();
  } else if (mode == PAUSE1) {
    pause1Clicks();
  } else if (mode == PAUSE2) {
    pause2Clicks();
  } else if (mode ==GAMEOVER) {
    gameoverClicks();
  }
}
