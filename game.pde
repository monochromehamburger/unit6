void game() {
  timer++;
  if (timer%(50*multiplier)==0) {
    enemies.add(new enemy(straightEnemyX, -100));
  }
  if(timer%(30*multiplier)==0){
    spinningEnemies.add(new spinningEnemy(spinningEnemyAngle));
  }
  if(timer%(120*multiplier)==0){
    boomerangEnemies.add(new boomerangEnemy(boomerangEnemyAngle, true));
    boomerangEnemies.add(new boomerangEnemy(boomerangEnemyAngle, false));
  }
  if(timer%(70*multiplier)==0){
    splittingEnemies.add(new splittingEnemy(splittingEnemyX));
  }
  if(timer%240*multiplier==0){
    lasers.add(new laser(laserX));
    laserX++;
    if(laserX==5){
      laserX=0;
    }
  }
  textAlign(CENTER);
  textSize(50);
  fill(255, 255, 255);
  text("Time: "+timer/60, width/2, height-100);
  ship.show();
  if (aKey) ship.move(-10, 0);
  if (dKey) ship.move(10, 0);
  if (wKey) ship.move(0, -10);
  if (sKey) ship.move(0, 10);
  for (int i=0; i<enemies.size(); i++) {
    if (enemies.get(i).alive==true) {
      if(enemies.get(i).diagonalLeft==true){
        enemies.get(i).move(-10, 5);
      }
      else if(enemies.get(i).diagonalRight==true){
        enemies.get(i).move(10, 5);
      }
      else{
        enemies.get(i).move(0, 10);
      }
      enemies.get(i).show();
      if (enemies.get(i).y>height+100) {
        enemies.get(i).alive=false;
      }
      if (dist(enemies.get(i).x, enemies.get(i).y, ship.x, ship.y)<(ship.hitbox+enemies.get(i).size)/2) {
        mode=-1;
        if(enemies.get(i).diagonalLeft==true || enemies.get(i).diagonalRight==true){
          splittingEnemyMinionDeathCount++;
        }
        else{
          regularEnemyDeathCount++;
        }
        click=true;
      }
    }
  }
  for (int i=0; i<spinningEnemies.size(); i++) {
    if (spinningEnemies.get(i).alive==true) {
      spinningEnemies.get(i).move();
      spinningEnemies.get(i).show();
      if (spinningEnemies.get(i).y>height+100) {
        spinningEnemies.get(i).alive=false;
      }
      if(spinningEnemies.get(i).y<-200){
        spinningEnemies.get(i).alive=false;
      }
      if (dist(spinningEnemies.get(i).x, spinningEnemies.get(i).y, ship.x, ship.y)<(ship.hitbox+spinningEnemies.get(i).size)/2) {
        mode=-1;
        spinningEnemyDeathCount++;
        click=true;
      }
    }
  }
  for (int i=0; i<boomerangEnemies.size(); i++) {
    if (boomerangEnemies.get(i).alive==true) {  
      boomerangEnemies.get(i).move();
      boomerangEnemies.get(i).show();
      if (boomerangEnemies.get(i).y>height+100) {
        boomerangEnemies.get(i).alive=false;
      }
      if(boomerangEnemies.get(i).y<-200){
        boomerangEnemies.get(i).alive=false;
      }
      if (dist(boomerangEnemies.get(i).x, boomerangEnemies.get(i).y, ship.x, ship.y)<(ship.hitbox+boomerangEnemies.get(i).size)/2) {
        mode=-1;
        boomerangEnemyDeathCount++;
        click=true;
      }
    }
  }
  for (int i=0; i<splittingEnemies.size(); i++) {
    if (splittingEnemies.get(i).alive==true) {  
      splittingEnemies.get(i).move(0, 5);
      splittingEnemies.get(i).show();
      if (splittingEnemies.get(i).y>height+100) {
        splittingEnemies.get(i).alive=false;
      }
      if(splittingEnemies.get(i).y<-200){
        splittingEnemies.get(i).alive=false;
      }
      if (dist(splittingEnemies.get(i).x, splittingEnemies.get(i).y, ship.x, ship.y)<(ship.hitbox+splittingEnemies.get(i).size)/2) {
        mode=-1;
        splittingEnemyDeathCount++;
        click=true;
      }
    }
  }
  for (int i=0; i<lasers.size(); i++) {
    if (lasers.get(i).alive==true) {  
      lasers.get(i).show();
      if (ship.x>lasers.get(i).x && ship.x<lasers.get(i).x+400 && lasers.get(i).active==true) {
        mode=-1;
        laserDeathCount++;
        click=true;
      }
    }
  }
  int index=0;
  for (int i=0; i<enemies.size(); i++) {
    if (enemies.get(index).alive==false) {
      enemies.remove(index);
    } else {
      index++;
    }
  }
  index=0;
  for (int i=0; i<spinningEnemies.size(); i++) {
    if (spinningEnemies.get(index).alive==false) {
      spinningEnemies.remove(index);
    } else {
      index++;
    }
  }
  index=0;
  for (int i=0; i<boomerangEnemies.size(); i++) {
    if (boomerangEnemies.get(index).alive==false) {
      boomerangEnemies.remove(index);
    } else {
      index++;
    }
  }
  index=0;
  for (int i=0; i<splittingEnemies.size(); i++) {
    if (splittingEnemies.get(index).alive==false) {
      splittingEnemies.remove(index);
    } else {
      index++;
    }
  }
  index=0;
  for (int i=0; i<lasers.size(); i++) {
    if (lasers.get(index).alive==false) {
      lasers.remove(index);
    } else {
      index++;
    }
  }
}
