//Pong
//Taiki Shickele

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer intro, theme, point, leftpaddle, rightpaddle, wall, clapping;


int mode;

final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;


//entity variables
PVector Mouse;
PVector ball;
PVector ball_v;
PVector left_paddle;
PVector right_paddle;
float ball_d;
int timer;


// Collision variables
PVector Angle;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//score variables
int p1score;
int p2score;


boolean AI;

PFont comicsans;



void setup() {
  
  frameRate(60);
  size(800, 600);
  textAlign(CENTER, CENTER);
  comicsans = loadFont("ComicSansMS-Bold-48.vlw");
  textFont(comicsans, 32);
  mode = INTRO;
  
  //intialize Ball
  ball_v = new PVector(random(-1, 1), random(-1, 1));
  ball_v.normalize();
  ball_v.mult(6);
  ball = new PVector(width/2, height/2);
  ball_d = 25;
  timer = 0;
  
  //intialize Paddles
  left_paddle = new PVector(20, height/2);
  right_paddle = new PVector(740, height/2);
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  //minim
  minim = new Minim(this);
  //theme = minim.loadFile(" ");
  point = minim.loadFile("score.wav");
  leftpaddle = minim.loadFile("leftpaddle.wav");
  rightpaddle = minim.loadFile("rightpaddle.wav");
  wall = minim.loadFile("wall.wav");
  clapping = minim.loadFile("clapping.wav");
  intro = minim.loadFile("intro.wav");
  
  
}


void draw() {
  
  Mouse = new PVector(mouseX, mouseY);
  
  if (mode == INTRO) {
    
    intro();
    
  } else if (mode == GAME) {
    
    game();
    
  } else if (mode == PAUSE) {
    
    pause();
    
  } else if (mode == GAMEOVER) {
    
    gameover();
    
  } else {
    println("mode error" + mode);
  }
  
  
  
}
