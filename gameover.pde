void gameoverL () {
  clapping.play ();
  
  //background, line, black ciercle in the middle, etc
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
  textSize (100);
  fill (pink);
  text("PINK WINS", 400, 200);

//points

  pointr=0;
  pointl=0;
  bg=#35A05F;

  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) {
    fill (#C3C494);
  } else {
    fill (#CBCE19);
  }
  rect (300, 400, 200, 100);

  textSize (40);
  fill (0);
  text ("RESTART", 400, 450);
} // end gameover L////////////////


// black circle, background, etc
void gameoverR () { 
  clapping.play ();
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
  textSize (100);
  fill (green);
  text("GREEN WINS", 400, 200);

  textSize (40);




  pointr=0;
  pointl=0;
  bg=#35A05F;





  //reset 

  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) {
    fill (#C3C494);
  } else {
    fill (#CBCE19);
  }
  rect (300, 400, 200, 100);

  textSize (40);
  fill (0);
  text ("RESTART", 400, 450);
} // end of gameover R/////////////////////////


void gameoverLClicked () {

  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) {
    mode =intro;
    clapping.pause ();
    clapping.rewind ();
  }
  reset ();
} // end gameoverLClicked/////////////////////////////


void gameoverRClicked() {

  if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) {
    mode =intro;
    clapping.pause ();
    clapping.rewind ();
  }
  reset ();
} // end gameoverRClciked///////////////////
