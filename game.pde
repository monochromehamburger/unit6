void game() {
  straightEnemyTimer--;
  spinningEnemyTimer--;
  boomerangEnemyTimer--;
  if (straightEnemyTimer<=0) {
    enemies.add(new enemy(straightEnemyX));
    straightEnemyTimer=50;
  }
  if(spinningEnemyTimer<=0){
    spinningEnemies.add(new spinningEnemy(spinningEnemyAngle));
    spinningEnemyTimer=20;
  }
  if(boomerangEnemyTimer<=0){
    boomerangEnemies.add(new boomerangEnemy(boomerangEnemyAngle, true));
    boomerangEnemies.add(new boomerangEnemy(boomerangEnemyAngle, false));
    boomerangEnemyTimer=40;
  }
  ship.show();
  if (aKey) ship.move(-10, 0);
  if (dKey) ship.move(10, 0);
  if (wKey) ship.move(0, -10);
  if (sKey) ship.move(0, 10);
  for (int i=0; i<enemies.size(); i++) {
    if (enemies.get(i).alive==true) {
      enemies.get(i).move(0, 5);
      enemies.get(i).show();
      if (enemies.get(i).y>height+100) {
        enemies.get(i).alive=false;
      }
      if (dist(enemies.get(i).x, enemies.get(i).y, ship.x, ship.y)<(ship.hitbox+enemies.get(i).size)/2) {
        mode=-1;
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
}
