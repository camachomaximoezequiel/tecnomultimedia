class fondoCalle {
  int cantidad;
  fondoCalle () {
    cantidad = 500;
  }

  void draw () {

    background (55, 55, 55);
    stroke (255, 255, 255);
    strokeWeight (6);
    
    for (int i=75; i<cantidad; i+=75) {
      line ( 25, 0+i, 25, -60+i);
    }
    for (int i=75; i<cantidad; i+=75) {
      line ( 375, 0+i, 375, -60+i);
    }
  }
}
