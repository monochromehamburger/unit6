class laser{
  int counter;
  int x;
  boolean active=false;
  boolean alive=true;
  laser(int position){
    x=position*250;
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
      rect(x, 0, 250, 1500);
      active=true;
    }
    else{
      fill(252, 246, 56);
      stroke(255, 255,255);
      strokeWeight(5);
      triangle(x+125, height/2-100, x+75, height/2, x+175, height/2);
      fill(255, 255, 255);
      stroke(0,0,0);
      
      rect(x-10+125, height/2-80, 20, 40);
      rect(x-10+125, height/2-20, 20, 20);
      noStroke();
    }
  }
}
