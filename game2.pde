//pong
//Grace Liu
//2-2
//May, 25, 2026

//Colors
color riceColor = #C6AD9C;
color blue = #2B50B2;
color orange = #FF8A3B;
color pink = #FFA7C9;

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

void setup(){
  size(800, 600);
  mode = INTRO;
  
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
