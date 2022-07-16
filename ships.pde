void ships () {                                                                    //enemigos

  image (enemigos [indiceenemigos], enemyX, enemyY, 70, 70);
  enemyY += enemyVel;

  if (enemyY > height + 500 && indiceenemigos < 4) {
    enemyX = random (width/8, width);
    enemyY = -50;
    enemyVel = 5;
    indiceenemigos ++;
    perdidas++;
  }

  if (shipdown && indiceenemigos < 4) {
    enemyX = random (width/8, width);
    enemyY = -50;
    enemyVel = 5;
    shipdown = false;
    indiceenemigos ++;
  }

  if (indiceenemigos >= 4) {
    indiceenemigos = 0;
  }

  float derribada = dist (shootX, shootY, enemyX, enemyY);
  if (derribada < shootTam/2 + 120/2) {
    shooting = false;
    shipdown = true;
    ganadas++;
  }
}
