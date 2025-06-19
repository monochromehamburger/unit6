void lose(){
  background(69, 100, 32);
  textSize(100);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("YOU LOSE Skill ISSUE", width/2, height/2-600);
  text("You survived for "+timer/60+" seconds", width/2, height/2-500);
  if(multiplier==1.5 && highscore1<=timer){
    text("That's a record for hard mode!", width/2, height/2-400);
    highscore1=timer;
  }
  if(multiplier==1 && highscore2<=timer){
    text("That's a record for easy demon mode!", width/2, height/2-400);
    highscore2=timer;
  }
  if(multiplier==0.75 && highscore3<=timer){
    text("That's a record for extreme demon mode!", width/2, height/2-400);
    highscore3=timer;
  }
  if(multiplier==0.5 && highscore4<=timer){
    text("That's a record for grandpa demon mode!", width/2, height/2-400);
    highscore4=timer;
  }
  text("Choose difficulty again", width/2, height/2-300);
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
  text("Lasers "+laserDeathCount+" times.", width/2+300, height/2+450);
  text("Your highscores:", width/2, height/2-200);
  text("Hard: "+highscore1/60, width/2, height/2-150);
  text("Easy demon: "+highscore2/60, width/2, height/2-100);
  text("Extreme demon: "+highscore3/60, width/2, height/2-50);
  text("Grandpa demon: "+highscore4/60, width/2, height/2);
  click=true;
}
