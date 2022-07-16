// TP 3 Juego interactivo libre
// Video explicativo https://youtu.be/CZcIDjLDnuo

String estado;
int x = 415;
int x2 = 400;
int y = 565;
int y2 = 574;
int speed=10;
PImage jugador;
PImage [] enemigos;
int indiceenemigos;
int shootX, shootY, shootTam; 
boolean shooting;
float enemyX, enemyY, enemyVel;
boolean shipdown;
int ganadas, perdidas;


void setup() {
  size( 800, 600);
  indiceenemigos = 0;
  enemigos = new PImage [4];

  for (int i=0; i<4; i++) {
    enemigos [i] = loadImage (i+".png");
  }

  enemyX = random (width/8, width);
  enemyY = -50;
  enemyVel = 5;
  shootX = x;
  shootY = 300;
  shootTam = 10;
  shooting = false;
  estado = "Inicio";
}

void draw() {

  if (estado == "Inicio") {                                                                                                                         
    background (0);
    stars();
    textos ("Space Battle", 52, width/2, height/4);
    textos ("Presiona Barra Espaciadora para ver las Instrucciones", 24, width/2, 280);
    textos ("Presiona la tecla C para ver los creditos", 24, width/2, 380);
    textos ("Presiona ESC para salir", 24, width/2, 580);
  } else if (estado == "Instrucciones") {
    background (0);
    stars();
    textos ("Evita que las naves enemigas lleguen al fin de la pantalla.", 17, width/2, 100);
    textos ("Si 5 naves logran pasar, perdiste \n Si logras derribar a 25, ganaste.", 17, width/2, 280);
    textos ("Con FLECHA IZQUIERDA Y DERECHA controlas la nave. \n Con CLICK IZQUIERDO disparas.", 17, width/2, 380);
    textos ("Presiona BARRA ESPACIADORA para jugar", 17, width/2, 580);
  } else if (estado == "Creditos") {
    background (0);
    stars();
    textos ("Creado por: Camacho Maximo Ezequiel", 20, width/2, 80);
    textos ("Legajo: 80366/0", 20, width/2, 160);
    textos ("Materia: Tecnologia Multimedial 1", 20, width/2, 240);
    textos ("Docente: Matias Jauregui", 20, width/2, 320);
    textos ("Presiona BARRA ESPACIADORA para volver al inicio", 20, width/2, 450);
  } else if (estado == "Juego") {
    background (0);
    shoot();
    player( 20, 25, 50, 16);
    stars();
    ships();
    text (ganadas, 160, 100);
    text (perdidas, 1220, 100);
    textos ("Derribados", 28, 160, 50);
    textos ("Perdidos", 28, 1220, 50);
  } else if (estado == "Ganar") {
    background (0, 40, 0);


    textos ("Ganaste", 46, width/2, height/2);

    textos ("Presiona ENTER para volver al inicio", 46, width/2, 500);
  } else if (estado == "Perder") {
    background (40, 0, 0);


    textos ("Perdiste", 46, width/2, height/2);


    textos ("Presiona ENTER para volver al inicio", 32, width/2, 500);
  }

  if (ganadas > 24) {
    estado = "Ganar";
  }
  if (perdidas > 4) {
    estado = "Perder";
  }
}

void keyPressed() {                                                                // movimiento del jugador
  if (estado == "Inicio" && keyCode == ' ') {
    estado = "Instrucciones";
  } else if (estado == "Inicio" && keyCode == 'c' || keyCode == 'C') {
    estado = "Creditos";
  } else if (estado == "Creditos" && keyCode == ' ') {
    estado = "Inicio";
  } else if (estado == "Instrucciones" && keyCode == ' ') {
    estado = "Juego";
  }
  if (keyCode==LEFT) x-=speed;
  if (keyCode==LEFT) x2-=speed;
  if (keyCode==RIGHT) x+=speed;
  if (keyCode==RIGHT) x2+=speed;
  if (keyCode == CONTROL) { 
    shooting = true;
  } 
  if ( keyCode == ENTER ) {
    if ( estado == "Perder" || estado == "Ganar") {
      estado = "Inicio";
    }
  }
}
