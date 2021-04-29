//Circulo cromatico RGB

void setup()
{
  size(400, 400);
}

void draw()
{

  noStroke();
  fill(#3B108E);
  triangle(200, 200, 250, 350, 150, 350); 
  fill(#7812FF);
  triangle(200, 200, 306, 306, 250, 350); 
  fill(#C61E40);
  triangle(200, 200, 350, 250, 306, 306); 
  fill(255, 0, 0);
  triangle(200, 200, 350, 150, 350, 250); 
  fill(255, 50, 0);
  triangle(200, 200, 306, 96, 350, 150);  
  fill(#E38305);
  triangle(200, 200, 250, 50, 306, 96); 
  fill(#FFB24D);
  triangle(200, 200, 250, 50, 150, 50); 
  fill(#FFF708);
  triangle(200, 200, 150, 50, 96, 96); 
  fill(#92FF05);
  triangle(200, 200, 50, 150, 96, 96); 
  fill(#03A715);
  triangle(200, 200, 50, 150, 50, 250); 
  fill(#00B0FF);
  triangle(200, 200, 50, 250, 96, 306); 
  fill(#0041FF);
  triangle(200, 200, 96, 306, 150, 350);

  noFill();
  stroke(1);
  strokeWeight(12);
  ellipse(200, 200, 310, 310);
}
