class splittingEnemy extends GameObject{
  boolean alive;
  int lives;
  int splitDistance;
  splittingEnemy(int x){
    this.x=x;
    y=-100;
    size=100;
    alive=true;
    if(splittingRight){
      splittingEnemyX+=250;
      if(splittingEnemyX>=width){
        splittingRight=false;
      }
    }
    else{
      splittingEnemyX-=250;
      if(splittingEnemyX<=0){
        splittingRight=true;
      }
    }
    splitDistance=1200;
  }
  public void show(){
    fill(233, 42, 247);
    circle(x, y, size);
    //println(x+" "+y);
  }
  @Override
  public void move(int changeX, int changeY){
    x+=changeX;
    y+=changeY;
    if(y==splitDistance){
      enemies.add(new enemy(x, y));
      enemies.get(enemies.size()-1).diagonalLeft=true;
      enemies.add(new enemy(x, y));
      enemies.get(enemies.size()-1).diagonalRight=true;
      if(!goingRight) straightEnemyX+=300;
      else{
        straightEnemyX-=300;
      }
    }
  }
}
