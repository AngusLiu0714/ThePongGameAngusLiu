void game () { //double player

  leftpaddle.play ();
  //background, the middle line, etc

  background (22, 120, 217);
  fill (0); 
  stroke (255);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);

  //keys
  if (upkey==true)  yr=yr-10; //if there's only one code, braces are not needed
  if (downkey ==true)  yr=yr+10;


  if (wkey==true)  yl=yl-10;
  if (skey ==true)  yl=yl+10;

  //paddle
  noStroke();
  fill (pink); //left paddle
  ellipse (xl, yl, 150, 150);
  if (yl<90) {
    yl=90;
  }

  if (yl>520) {
    yl=520;
  }

  fill (green); //right paddle
  ellipse (xr, yr, 150, 150);
  if (yr<90) {
    yr=90;
  }

  if (yr>520) {
    yr=520;
  }


  //ball movement
  fill (255);
  ellipse (xb, yb, 50, 50);
  if (AI==true) {
    xb=xb+vx;
    yb=yb+vy;
  }

  //wall bouncing

  if (yb<=25 || yb>=575) {
    vy = vy*-1;
  }

  if (yb<25) {
    yb=25;
  }

  if (yb>575) {
    yb=575;
  }

  //ball bouncing on paddle

  if (dist (xl, yl, xb, yb) < 100) { //ball bounce of left paddle
    vy= (yb-yl)*0.13;
    vx= (xb-xl)*0.13;
  }

  if (dist (xr, yr, xb, yb) < 100) { // ball bounce of right paddle
    vy= (yb-yr)*0.13;
    vx= (xb-xr)*0.13;
  }

  ///restart

  if (xb<25) {
    pointr=pointr+1;
    xb=400;
    yb=300;
    AI=false;
  } 

  if (xb>775) {
    pointl=pointl+1;
    xb=400;
    yb=300;
    AI=false;
  }

  //point

  textSize (50);

  fill (pink);
  text ("0"+pointl, 350, 20);

  fill (green);
  text ("0"+pointr, 450, 20);


  if (xb==400 && yb==300) {
    AI = false;
  }

  if (AI==false) {
    textSize (40);
    fill (255);
    text("CLICK BLACK BALL TO START", 400, 200);
  }

  if (pointl>2) {
    mode=gameoverL;
  }

  if (pointr>2) {
    mode= gameoverR;
  }
} // end game//////////////////////////////

void gameClicked () {

  if (dist( mouseX, mouseY, 0, 350) <= 350) {
    mode= pause;
  } else if (mouseX>0 && mouseX<800 && mouseY >0 && mouseY <600) {
    AI=true;
    vx=vx*-1;
    leftpaddle.pause();
    leftpaddle.rewind();
  }

  if (dist( mouseX, mouseY, 477, 300) <= 400) {
    mode= pause;
  } else if (mouseX>0 && mouseX<800 && mouseY >0 && mouseY <600) {
    AI=true;
    vx=vx*-1;
    leftpaddle.pause();
    leftpaddle.rewind();
  }
  if (dist( mouseX, mouseY, 325, 300) <= 155) {
    mode= game;
    leftpaddle.pause();
    leftpaddle.rewind();
  }
} //end gameCLicked///////////
