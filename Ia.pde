class Ia {
  PImage [] Ia;
  int tipoIa;
  float posX, posY;

  Ia () {
    tipoIa = 0;
    Ia = new PImage [3];
    for ( int i = 0; i<3; i++) {
      Ia [i] = loadImage (i+ ".png");
    }

    posX = random (35, 365);
    posY = -200;
  }
  void draw () {
    pushStyle ();
    fill (255, 0, 0);
    image (Ia [tipoIa], posX, posY);
    popStyle ();

    posY += 4;

    if (posY > width + 100) {
      posX = random (25, 300);
      posY = -200;
      tipoIa ++;
    }

    if (tipoIa >= 3) {
      tipoIa = 0;
    }
  }
}
