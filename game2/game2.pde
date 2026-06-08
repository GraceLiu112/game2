//Grace Liu
//Block 2-2
//Jun 1, 2026

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong
//Grace Liu
//2-2
//May, 25, 2026

//Colors
color riceColor = #A0887B;
color blue = #2B50B2;
color orange = #FF8A3B;
color pink = #FFA7C9;
color red = #C43631;
color green = #61B46B;

// sound variables
Minim minim;
AudioPlayer theme;

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float vx, vy;

//scoring
int leftscore, rightscore, timer;

//keyboard
boolean wkey, skey, upkey, downkey, leftkey, rightkey;

//player number
int player;


void setup(){
  size(800, 600);
  mode = INTRO;
  
    //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  player = 0;
  
  timer = 100;
  
  wkey = skey = upkey = downkey = false;
  
}

void draw(){
  if(mode == INTRO){
    intro();
  }
  else if(mode == GAME){
    game();
  }
  else if(mode == PAUSE){
    pause();
  }
  else if(mode == GAMEOVER){
    gameover();
  }
  else{
    println("MODE error: " + mode); 
  }

}
