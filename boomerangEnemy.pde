class boomerangEnemy extends GameObject{
  boolean alive;
  float moveX, moveY;
  float ax=0.02;
  boolean goingLeft;
  boolean startingLeft;
  boomerangEnemy(float angle, boolean startingLeft){
    if(startingLeft){
      x=200;
    }
    else{
      x=width-200;
    }
    y=-100;
    size=50;
    alive=true;
    moveX=cos(angle*PI/180);
    moveY=sin(angle*PI/180);
    if(!startingLeft){
      moveX*=-1;
      goingLeft=true;
    }
  }
  public void show(){
    fill(69, 169, 219);
    circle(x, y, size);
    //println(x+" "+y);
  }
  public void move(){
      if(goingLeft==true){
        moveX-=ax;
      }
      else{
        moveX+=ax;
      }
    
    x+=moveX*10;
    y+=moveY*10;
    if(x>width-400){
      goingLeft=true;
    }
    if(x<400){
      goingLeft=false;
    }
    if(goingLeft && moveX>0){
      ax=0.1;
    }
    else if(!goingLeft && moveX<0){
      ax=0.1;
    }
    else{
      ax=0.02;
    }
  }
}
