int mode;
final int INTRO = 0;
final int OPTIONS = 1;
final int GAMEHARD = 2;
final int GAMEMEDIUM = 3;
final int PAUSEHARD = 4;
final int PAUSEMEDIUM = 5;
final int GAMEOVERHARD = 6;
final int GAMEOVERMEDIUM = 7;

int score;

int[] x;
int[] y;
int brickd;
int n;
int tempx, tempy;
boolean[] alive;

float ballx, bally, balld, ballvx, ballvy;
float paddlex, paddley, paddled;
float distx, disty, totaldist;

boolean akey, dkey, leftkey, rightkey;

color color1 = #FF5D5D;
color color2 = #FFB221;
color color3 = #FEFF21;
color color4 = #21FF95;
color color5 = #21B3FF;
color color6 = #6100FF;

void setup() {
  size(800, 800);
  
  mode = INTRO;
  score = 0;
  
  paddlex = width/2;
  paddley = height;
  paddled = 200;
  
  ballx = width/2;
  bally = height/2;
  balld = 5;
  ballvx = 0;
  ballvy = 5;
  
  brickd = 50;
  n = 78;
  x = new int [n];
  y = new int [n];
  alive = new boolean [n];
  tempx = 100;
  tempy = 100;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 50;
    if (tempx == width - 50) {
      tempx = 100;
      tempy = tempy + 50;
    }
    i = i + 1;
  }
  
  akey = dkey = leftkey = rightkey = false;
  
  textAlign(CENTER, CENTER);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAMEHARD) {
    gamehard();
  } else if (mode == GAMEMEDIUM) {
    gamemedium();
  } else if (mode == PAUSEHARD) {
    pausehard();
  } else if (mode == PAUSEMEDIUM) {
    pausemedium();
  } else if (mode == GAMEOVERHARD) {
    gameoverhard();
  } else if (mode == GAMEOVERMEDIUM) {
    gameovermedium();
  } else {
    println("Mode Error: Mode is " + mode);
  }
}
