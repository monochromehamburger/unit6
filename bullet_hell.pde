import processing.sound.*;
int mode=0;
int timer=0;
boolean aKey=false;
boolean dKey=false;
boolean wKey=false;
boolean sKey=false;
player ship=new player();
ArrayList<enemy> enemies=new ArrayList<>();
ArrayList<spinningEnemy> spinningEnemies=new ArrayList<>();
ArrayList<boomerangEnemy> boomerangEnemies=new ArrayList<>();
ArrayList<splittingEnemy> splittingEnemies=new ArrayList<>();
ArrayList<laser> lasers=new ArrayList<>();
int straightEnemyX=0;
int spinningEnemyAngle=0;
int boomerangEnemyAngle=0;
int splittingEnemyX=0;
boolean spinningRight=true;
boolean goingRight=true;
boolean click=true;
boolean boomerangRight=true;
int splitDistance=200;
boolean splitDown=true;
float multiplier;
int regularEnemyDeathCount=0;
int spinningEnemyDeathCount=0;
int boomerangEnemyDeathCount=0;
int splittingEnemyDeathCount=0;
int splittingEnemyMinionDeathCount=0;
int laserDeathCount=0;
int laserX;
int highscore1=0;
int highscore2=0;
int highscore3=0;
int highscore4=0;
void setup(){
  size(2000, 1500, P2D);
  ship=new player();
  splittingEnemyX=500;
  laserX=int(random(5));
  frameRate(60);
}
void draw(){
  background(0, 0, 0);
  if(mode==0){
    intro();
  }
  else if(mode==-1){
    lose();
  }
  else{
    game();
  }
}
void keyPressed() {
  if (key=='a') {
    aKey=true;
  }
  if (key=='d') {
    dKey=true;
  }
  if (key=='w') {
    wKey=true;
  }
  if (key=='s') {
    sKey=true;
  }
  if(key=='1' && click==true){
    enemies=new ArrayList<enemy>();
    mode=1;
    ship=new player(); 
    spinningEnemies=new ArrayList<spinningEnemy>();
    boomerangEnemies=new ArrayList<boomerangEnemy>();
    splittingEnemies=new ArrayList<splittingEnemy>();
    lasers=new ArrayList<laser>();
    timer=0;
    click=false;
    multiplier=1.5;
  }
  if(key=='2' && click==true){
    enemies=new ArrayList<enemy>();
    mode=1;
    ship=new player(); 
    spinningEnemies=new ArrayList<spinningEnemy>();
    boomerangEnemies=new ArrayList<boomerangEnemy>();
    splittingEnemies=new ArrayList<splittingEnemy>();
    lasers=new ArrayList<laser>();
    timer=0;
    click=false;
    multiplier=1;
  }
  if(key=='3' && click==true){
    enemies=new ArrayList<enemy>();
    mode=1;
    ship=new player(); 
    spinningEnemies=new ArrayList<spinningEnemy>();
    boomerangEnemies=new ArrayList<boomerangEnemy>();
    splittingEnemies=new ArrayList<splittingEnemy>();
    lasers=new ArrayList<laser>();
    timer=0;
    click=false;
    multiplier=0.75;
  }
  if(key=='4' && click==true){
    enemies=new ArrayList<enemy>();
    mode=1;
    ship=new player(); 
    spinningEnemies=new ArrayList<spinningEnemy>();
    boomerangEnemies=new ArrayList<boomerangEnemy>();
    splittingEnemies=new ArrayList<splittingEnemy>();
    lasers=new ArrayList<laser>();
    timer=0;
    click=false;
    multiplier=0.5;
  }
}
void keyReleased(){  
  if (key=='a') {
    aKey=false;
  }
  if (key=='d') {
    dKey=false;
  }
  if (key=='w') {
    wKey=false;
  }
  if (key=='s') {
    sKey=false;
  }
}
void mouseClicked(){
}
