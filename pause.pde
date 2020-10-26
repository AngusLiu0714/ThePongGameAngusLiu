
//pause for two players
void pause () {


  background (22, 120, 217);
  fill (0); //green
  stroke (255);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);



  noStroke();
  fill (pink); //left paddle
  ellipse (xl, yl, 150, 150);


  fill (green); //right paddle
  ellipse (xr, yr, 150, 150);
  textSize (200);
  fill (0);
  text ("PAUSE", 400, 100);

  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
    fill (#938B8B);
  } else {
    fill (255);
  }
  rect (300, 400, 200, 80);

  fill (0);
  textSize (40);
  text ("resume", 395, 440);

  fill (pink);
  text ("0"+pointl, 350, 20);

  fill (green);
  text ("0"+pointr, 450, 20);
} /// end pause for two players //////////////////////////////////


//pause for one player

void singlep () {


  background (22, 120, 217);
  fill (0); //green
  stroke (255);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);



  noStroke();
  fill (pink); //left paddle
  ellipse (xl, yl, 150, 150);


  fill (green); //right paddle
  ellipse (xr, yr, 150, 150);

  fill (0);
  textSize (200);
  text ("PAUSE", 400, 100);

  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
    fill (#938B8B);
  } else {
    fill (255);
  }
  rect (300, 400, 200, 80);

  fill (0);
  textSize (40);
  text ("resume", 395, 440);

  fill (pink);
  text ("0"+pointl, 350, 20);

  fill (green);
  text ("0"+pointr, 450, 20);
} // end pause for one player ////////////////////////////////////


void pauseClicked () {

  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
    mode= game;
  }
} //end pauseClicked//////////////////////


void singlepClicked () {

  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
    mode=single;
  }
} // end singledClicked///////////////////
