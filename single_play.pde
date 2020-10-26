void single () {  //single player

//background, blackball, line, etc
  leftpaddle.play ();
  background (22, 120, 217);
  fill (0); //green
  stroke (255);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);


  if (wkey==true)  yl=yl-10;
  if (skey ==true)  yl=yl+10;
  noStroke();
  fill (pink); //left paddle
  ellipse (xl, yl, 150, 150);

  if (yl<85) {
    yl=85;
  }

  if (yl>520) {
    yl=520;
  }

  //AI 

  if (yb>yr) {
    yr=yr+4;
  } else {
    yr=yr-4;
  }



  fill (green); //right paddle
  ellipse (xr, yr, 150, 150);

  if (yr<-50) {
    yr=-50;
  }

  if (yb>650) {
    yr=650;
  }

  AI=true;
  //Ball movement
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


  if (dist (xl, yl, xb, yb) < 100) { //ball bounce of left paddle
    vy= (yb-yl)*0.13;
    vx= (xb-xl)*0.13;
  }

  if (dist (xr, yr, xb, yb) < 100) { // ball bounce of right paddle
    vy= (yb-yr)*0.13;
    vx= (xb-xr)*0.13;
  }

  //restart

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



  //scorebboard
  textSize (50);

  fill (pink);
  text ("0"+pointl, 350, 20);

  fill (green);
  text ("0"+pointr, 450, 20);



  if (xb==0 && yb==100) {
    AI= false;
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
} // end single///////////////////


void singleClicked () {


  if (dist( mouseX, mouseY, 477, 300) <= 400) {
    mode= pause;
  
    }


    if (dist( mouseX, mouseY, 325, 300) <= 155) {
      mode= game;
       leftpaddle.pause();
      leftpaddle.rewind();
    
    } else if (mouseX>0 && mouseX<800 && mouseY >0 && mouseY <600) {
      AI=true;
      leftpaddle.pause();
      leftpaddle.rewind();
    }
  } // end single played/////////////////////
