// TP 3 Juego interactivo libre
// Video explicativo 

float x = 415;
float x2 = 400;
float y = 565;
float y2 = 574;
float speed=10;
PImage p0, p1, p2;
PImage[] enemies = new PImage [6];




void setup() {
  size( 800, 600);
  p0 = loadImage("enemy0.png");
  p1 = loadImage("enemy1.png");
  p2 = loadImage("enemy2.png");
  enemies[0] = p0;
  enemies[1] = p1;
  enemies[2] = p2;

    

}

void draw() {
  background(0);
  player( 20, 25, 50, 16);
  stars();
  ships();

 


}

void keyPressed() {                                    // movimiento del jugador
  if (keyCode==LEFT) x-=speed;
  if (keyCode==LEFT) x2-=speed;
  if (keyCode==RIGHT) x+=speed;
  if (keyCode==RIGHT) x2+=speed;
 
}
  
void player(int a, int b, int c, int d) {            // avatar del jugador
  rect(x, y, a, b);
  rect(x2, y2, c, d);

}

void stars() {                                      // fondo negro con estrellas
  float a = random ( 0, 800);                  
  float b = random ( 0, 800);
  float c = random ( 0, 10);
  float d = random ( 0, 10);
  fill( 255, 255, 255);
  ellipse( a, b, c, d);
}
  
void ships() {                                      // naves enemigas
  
  float  a = random(0, 800);
  int b = -35;
  
  image(enemies[0], a, b, 55, 55);
}

  
  
  
  //image(enemies[int(random(enemies.length))], a, b, 55, 55);



    
  
