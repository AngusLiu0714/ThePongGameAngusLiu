void mouseReleased () {

  if (mode==intro) {
    introClicked();
  } else if (mode ==game) {
    gameClicked();
  } else if (mode== pause) {
    pauseClicked();
  } else if (mode==gameoverR) {
    gameoverRClicked();
  } else if (mode==gameoverL) {
    gameoverLClicked();
  } else if (mode==single) {
    singleClicked();
  } else if (mode==singlep) {
    singlepClicked();
  }
} // end mouseReleased/////////////////////
