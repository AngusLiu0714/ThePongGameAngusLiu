void keyPressed () {
  if (keyCode == UP) {
    upkey= true;
  }

  if (keyCode ==DOWN) {
    downkey= true;
  }

  if (key =='w' || key== 'W') {
    wkey = true;
  }
  if (key =='s' || key== 'S') {
    skey = true;
  }
} // end keyPressed////////////////////


void keyReleased () {
  if (keyCode == UP) {
    upkey= false;
  }

  if (keyCode ==DOWN) {
    downkey= false;
  }

  if (key =='w' || key== 'W') {
    wkey = false;
  }
  if (key =='s' || key== 'S') {
    skey = false;
  }
} //end Released///////////////////////
