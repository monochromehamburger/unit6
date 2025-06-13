class splittingEnemy extends GameObject{
  boolean alive;
  int lives;
  int splitDistance;
  splittingEnemy(int x){
    this.x=x;
    y=-100;
    size=100;
    alive=true;
    splittingEnemyX+=250;
    if(splittingEnemyX>=width){
      splittingEnemyX=0;
    }
    splitDistance=300;
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
    if(y%splitDistance==0){
      enemies.add(new enemy(x, y));
      enemies.get(enemies.size()-1).diagonalLeft=true;
      enemies.get(enemies.size()-1).size/=3;
      enemies.add(new enemy(x, y));
      enemies.get(enemies.size()-1).diagonalRight=true;
      enemies.get(enemies.size()-1).size/=3;
      if(!goingRight) straightEnemyX+=300*multiplier;
      else{
        straightEnemyX-=300*multiplier;
      }
    }
  }
}
