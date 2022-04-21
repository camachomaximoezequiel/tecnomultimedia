// TP 0 Dibujo básico y GitHub

void setup()
{
  size(800, 600);
}

void draw()
{
  stroke(1);
  fill(255, 0, 0 );
  triangle(355, 300, 300, 385, 325, 385);      //bufanda atras
  strokeWeight(5);
  line(460, 350, 520, 300);      // brazo derecho
  line(520, 300, 525, 290);
  line(520, 300, 535, 300);
  noStroke();
  strokeWeight(1);
  fill(255, 255, 255);
  ellipse(400, 375, 150, 150);      //cuerpo
  ellipse(400, 275, 100, 100);
  fill(255, 128, 0);
  triangle(445, 260, 415, 260, 415, 275);      //nariz
  fill(255, 0, 0 );
  stroke(1);
  rect(338, 285, 125, 45, 28);      //bufanda
  fill(0, 0 ,0 );
  ellipse(430, 250, 10, 10);      //ojos
  ellipse(400, 250, 10, 10);      
  fill(0, 0 ,0 );
  rect(355,285, 25, 45);      //detalles bufanda
  rect(390,285, 25, 45);
  rect(425,285, 25, 45);
  ellipse(425, 360, 10, 10);      //detalles panza
  ellipse(425, 400, 10, 10);
  strokeWeight(5);
  line(360, 350, 300, 275);      // brazo izquierdo
  line(300, 275, 305, 265);
  line(300, 275, 290, 265);
  line(300, 275, 280, 270);
  stroke(255, 255, 255);
  line(50, 50, 250, 250);      //copo de nieve
  line(250, 50, 50, 250);      
  line(50, 150, 250, 150);
  line(100, 150, 75, 125);
  line(75, 125, 125, 125);
  line(125, 125, 150, 75);
  line(150, 75, 175, 125);
  line(175, 125, 225, 125);
  line(225, 125, 200, 150);
  line(200, 150, 225, 175);
  line(225, 175, 175, 175);
  line(150, 225, 175, 175);
  line(150,225, 125, 175);
  line(125,175, 75, 175);
  line(75, 175, 100, 150);
  line(75, 75, 75, 50);
  line(75, 75, 50, 75);
  line(225, 75, 225, 50);
  line(225, 75, 250, 75);
  line(225, 150, 250,125);
  line(225, 150, 250, 175);
  line(225, 225, 250, 225);
  line(225, 225, 225, 250);
  line(75, 225, 75, 250);
  line(75, 225, 50, 225);
  line(75, 150, 50, 125);
  line(75, 150, 50, 175);
  noLoop();

  

  
}
  
