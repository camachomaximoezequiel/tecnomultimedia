// TP 5 Avanzando con POO
// Video explicativo https://youtu.be/wHbwQYgkmm4

import processing.sound.*;

Pantalla pantalla;

void setup () {
  size (600, 400);
  
  pantalla = new Pantalla (this);
}

void draw () {
  pantalla.draw ();
}

void keyPressed () {
  pantalla.keyPressed ();
}
