//pong
//Grace Liu
//2-2
//May, 25, 2026

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

void setup(){
  size(800, 600);
  mode = INTRO;
}

void draw(){
  if(mode == INTRO){
    
  }
  else if(mode == GAME){
  }
  else if(mode == PAUSE){
  }
  else if(mode == GAMEOVER){
  }
  else{
    println("MODE error: " + mode);
  
  }

}
