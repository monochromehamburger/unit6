void lose(){
  background(69, 100, 32);
  textSize(100);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("YOU LOSE Skill ISSUE", width/2, height/2-300);
  text("You survived for "+timer/60+" seconds", width/2, height/2-200);
  text("Choose difficulty again", width/2, height/2-100);
  textSize(50);
  text("1: Hard", width/2-300, height/2+300);
  text("2: Easy Demon", width/2-300, height/2+250);
  text("3: Extreme Demon", width/2-300, height/2+200);
  text("4: Grandpa Demon", width/2-300, height/2+150);
  text("You have died to:", width/2+300, height/2+150);
  text("Normal enemies "+regularEnemyDeathCount+" times.", width/2+300, height/2+200);
  text("Green enemies "+spinningEnemyDeathCount+" times.", width/2+300, height/2+250);
  text("Blue enemies "+boomerangEnemyDeathCount+" times.", width/2+300, height/2+300);
  text("Pink enemies "+splittingEnemyDeathCount+" times.", width/2+300, height/2+350);
  text("Pink enemies' bullets "+splittingEnemyMinionDeathCount+" times.", width/2+300, height/2+400);
  click=true;
}
