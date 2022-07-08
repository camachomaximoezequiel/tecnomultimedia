// TP 3 Juego interactivo libre
// Video explicativo 

float x = 415;
float x2 = 400;
float y = 565;
float y2 = 574;
float speed=10;
PImage p0, p1, p2, p3, p4, p5;
PImage[] enemies = new PImage [6];
float j0, j1, j2, j3, j4, j5, j6, j7;
int k = -55;
int k2 = 655;
float bx, by;
boolean shooted;

void setup() {
  size( 800, 600);
  
  bx = 425;
  by = 300;

    

}

void draw() {
  background(0);
  shoot();
  player( 20, 25, 50, 16);
  stars();
  ships();


 


}

void keyPressed() {                                    // movimiento del jugador
  if (keyCode==LEFT) x-=speed;
  if (keyCode==LEFT) x2-=speed;
  if (keyCode==RIGHT) x+=speed;
  if (keyCode==RIGHT) x2+=speed;
  if (keyCode==LEFT) bx-=speed;
  if (keyCode==RIGHT) bx+=speed;
 
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
 
 
 
  p0 = loadImage("enemy0.png");
  p1 = loadImage("enemy1.png");
  p2 = loadImage("enemy2.png");
  p3 = loadImage("enemy3.png");
  p4 = loadImage("enemy4.png");
  p5 = loadImage("enemy5.png");
  enemies[0] = p0;
  enemies[1] = p1;
  enemies[2] = p2;
  enemies[3] = p3;
  enemies[4] = p4;
  enemies[5] = p5;

  float[] position = new float [8];
  j0= 50;
  j1= 200;
  j2= 300;
  j3= 400;
  j4= 500;
  j5= 600;
  j6= 700;
  j7= 750;
  position[0] = j0;
  position[1] = j1;
  position[2] = j2;
  position[3] = j3;
  position[4] = j4;
  position[5] = j5;
  position[6] = j6;
  position[7] = j7;
  
  
  image(enemies[0], j0, k, 55, 55);
  if ( k == 600){
      k = k- k2;}
  
  image(enemies[0], j2, k, 55, 55);
  if ( k == 600){
      k = k- k2;}
      

  
  image(enemies[0], j6, k, 55, 55);
  k++;
  if ( k == 600){
      k = k- k2;}

  image(enemies[0], j5, k, 55, 55);
  k++;
  
  if ( k == 600){
      k = k- k2;
  }
  
}
  
void shoot(){                                //mecanica disparar
 
  
  ellipse(bx, by, 4, 8);
  if (shooted && by> 0) {
    by -= 10;
  } else {
    by = height-50;
    shooted = false;
  }

}
void mousePressed() {
  shooted = true;
}
  
