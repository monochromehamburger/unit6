void lose(){
  background(69, 100, 32);
  textSize(100);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("YOU LOSE Skill ISSUE", width/2, height/2-200);
  text("You survived for "+timer/60+" seconds", width/2, height/2-100);
  click=true;
}
