class enemy extends GameObject{
  boolean alive;
  int lives;
  boolean diagonalLeft;
  boolean diagonalRight;
  enemy(float x, float y){
    this.x=x;
    this.y=y;
    size=100;
    alive=true;
    if(goingRight){
      straightEnemyX+=150;
      if(straightEnemyX>=width){
        goingRight=false;
      }
    }
    else{
      straightEnemyX-=150;
      if(straightEnemyX<=0){
        goingRight=true;
      }
    }
  }
  public void show(){
    fill(255, 255, 255);
    circle(x, y, size);
    //println(x+" "+y);
  }
}
