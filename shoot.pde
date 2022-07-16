void shoot() {                                                                   //disparar

  rect (shootX, shootY, shootTam, shootTam);
  if (shooting && shootY >- shootTam/2) {
    shootY -= 12;
  } else {
    shootX = x;
    shootY = 570;
    shooting = false;
  }
}

void textos (String texto, float size, float X, float Y) {
  textAlign (CENTER, CENTER);
  textSize (size);
  text (texto, X, Y);
}
