// TP 4 Programando con Objetos I
// Video explicativo 

escenario objetoEscenario;

void setup () {
  size (400, 400);
  
  objetoEscenario = new escenario ();
}

void draw () {
  
  objetoEscenario.draw ();
}

void keyPressed () {
  objetoEscenario.movimiento ();
}
