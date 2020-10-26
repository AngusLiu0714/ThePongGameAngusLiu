//The Pong Game! 
//Angus Liu
//Block: 1-1A
//Oct, 2020

final int intro=1; //final means to lock the definition
final int game=2;
final int pause=3;
final int gameoverR=4;
final int gameoverL=5;
final int single=6;
final int singlep=7;
final int singlerestart =8;

int mode =intro; //don't put final here or else mode can't change

float xr=810; //right paddle
float yr=300;
float xl= -10; //left paddle
float yl=300;
float xb= 400; // ball
float yb =300;
float vx= -8; //ball movement
float vy=9;
int pointl=0;
int pointr=0;

//color
color bg;
color pink = #FF0F53; 
color green = #558A67;

boolean upkey; //an on-off switch
boolean downkey;
boolean wkey;
boolean skey;
boolean AI;


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer intromusic, leftpaddle, clapping;



void setup () {
  size (800, 600);
  textAlign (CENTER, CENTER);

//music load file
  minim= new Minim(this);
  intromusic= minim.loadFile("intro.wav"  );
  clapping= minim.loadFile("clapping.wav" );
  leftpaddle= minim.loadFile("leftpaddle.wav" );


  reset ();
} //end set up ///////////////////////



void draw () {
  if (mode==intro) {
    intro();
  } else if (mode ==game) {
    game();
  } else if (mode== pause) {
    pause();
  } else if (mode==gameoverR) {
    gameoverR();
  } else if (mode==gameoverL) {
    gameoverL();
  } else if (mode==single) {
    single();
  } else if (mode==singlep) {
    singlep();
  }
  println (mouseX, mouseY);
}
// end draw //////////////////////////////
