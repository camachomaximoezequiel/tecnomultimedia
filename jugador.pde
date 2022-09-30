class jugador {
  PImage avatar;
  float posX, posY;

  jugador () {
    avatar = loadImage ("avatar1.png");

    posX = width/2;
    posY = 300;
  }

  void draw () {
    pushStyle ();
    image (avatar, posX, posY, 75, 135);
    popStyle ();
  }

  void movizquierda () {
    if (posX >= 25)
      posX -= 8;
  }


  void movderecha () {
    if (posX <= 300)
      posX += 8;
  }
}
