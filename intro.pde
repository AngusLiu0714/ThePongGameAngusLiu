void intro () {
  intromusic.play ();


  background (22, 120, 217);
  fill (0); 
  stroke (255);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);
  fill (255);
  ellipse (400, 300, 50, 50);



  noStroke();
  fill (pink); //left paddle
  ellipse (xl, yl, 150, 150);


  fill (green); //right paddle
  ellipse (xr, yr, 150, 150);

  //Title 

  fill (0);
  textSize (50); 
  text( "THE PONG GAME", 425, 50);
  //Start Switches
  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) { //start
    fill (#555C62);
  } else {
    fill (247, 240, 15);
  }
  rect (300, 400, 200, 100);

  fill (0);
  textSize (40);
  text ("START", 400, 450);


  //Player Switches

  if (mouseX>100 && mouseX< 300 && mouseY>100 && mouseY <200 || bg==#983434) { //one player
    fill (#983434);
  } else {
    fill (pink);
  }
  rect (100, 100, 200, 100);
  fill (0);
  textSize (30);
  text ("ONE PLAYER", 200, 150);


  if (mouseX>500 && mouseX< 700 && mouseY>100 && mouseY <200 || bg==#357BA0) { //two player
    fill (#357BA0);
  } else {
    fill (green);
  }
  rect (500, 100, 200, 100);
  fill (0);
  textSize (30);
  text ("TWO PLAYER", 600, 150);
}




// end intro/////////////////////
void reset () {
  //target
  fill (pink); //left paddle
  xl= -10; 
  yl=300; 
  fill (green); //right paddle
  xr= 810;
  yr= 300;
  vx= -8;
  vy= 9;
}

void introClicked () {
  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500 && bg==#983434) { // one player
    mode=single;
    AI=true;
    intromusic.pause();
    intromusic.rewind();
  }

  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500 && bg==#357BA0) { // two player
    mode=game;
    AI=true;
    intromusic.pause();
    intromusic.rewind();
  }

  if (mouseX>100 && mouseX< 300 && mouseY>100 && mouseY <200) {
    bg=#983434;
  }

  if (mouseX>500 && mouseX< 700 && mouseY>100 && mouseY <200) {
    bg=#357BA0;
  }
} //end introClicked ////////////////////////////
