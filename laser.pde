class laser{
  int counter;
  int x;
  boolean active=false;
  boolean alive=true;
  laser(int position){
    x=position*400;
    counter=180;
    alive=true;
  }
  void show(){
    counter--;
    if(counter<=-120){
      alive=false;
    }
    if(counter<=0){
      fill(255, 0, 0, 125);
      rect(x, 0, 400, 1500);
      active=true;
    }
    else{
      fill(252, 246, 56);
      stroke(255, 255,255);
      strokeWeight(5);
      triangle(x+200, height/2-100, x+150, height/2, x+250, height/2);
      fill(255, 255, 255);
      stroke(0,0,0);
      
      rect(x-10+200, height/2-80, 20, 40);
      rect(x-10+200, height/2-20, 20, 20);
      noStroke();
    }
  }
}
