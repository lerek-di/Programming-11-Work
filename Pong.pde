import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme_song, ball_hit, game_over;

int mode;
final int INTRO = 0;
final int OPTIONS = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

float puckx, pucky, puckd;
float leftx, lefty, leftd, rightx, righty, rightd;
float puckvx, puckvy;
float leftdistx, leftdisty, rightdistx, rightdisty, lefttotaldist, righttotaldist;

boolean wkey, skey, upkey, downkey;

color selectedColor;
color color1 = #FC52E9;
color color2 = #FFF040;
color color3 = #24FC66;
color color4 = #0DFFE9;
color color5 = #7A29FF;

int scoreleft, scoreright;

void setup() {
  size(800, 600);
  mode = INTRO;
  scoreleft = 0;
  scoreright = 0;
  
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = 800;
  righty = height/2;
  rightd = 200;
  puckx = width/2;
  pucky = height/2;
  puckd = 100;
  
  puckvx = -10;
  puckvy = 0;

  wkey = skey = upkey = downkey = false;
  
  selectedColor = color1;
  
  minim = new Minim(this);
  
  textAlign(CENTER, CENTER);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode ==GAMEOVER) {
    gameover();
  } else {
    println("Mode Error: Mode is " + mode);
  }
}
