// TP 2 Animando con código

PImage fondo;
PFont matrixfont;
import processing.sound.*;                              // use la libreria sound en processing para tener musica durante los creditos
SoundFile song;
int p1;
int p2;
int p3;
int p4;
int p5;
int p6;
int p7;
int p8;
int p9;
int p10;
int p11;
int p12;
int p13;
int p14;


void setup() {
  size(800, 600);
  fondo = loadImage("fondo.jpg");
  matrixfont = createFont("matrix.ttf", 20); // size is 92
  textFont(matrixfont);
  song= new SoundFile(this,"creditsmusic.mp3");
  song.play();
  song.amp(0.25);
  p1 = 0;
  p2 = 0;
  p3 = 0;
  p4 = 0;
  p5 = 0;
  p6 = 0;
  p7 = 0;
  p8 = 0;
  p9 = 0;
  p10 = 0;
  p11 = 0;
  p12 = 0;
  p13 = 0;
  p14 = 0;


}

void draw(){
  float r = random(1, 125);                              // Queria buscar un verde brilloso (estilo neon) y esto fue la mejor manera en que lo pude plasmar
  float g = random(255, 255);
  float b = random(1, 125);
  println (mouseX);
  textSize(22);
  image(fondo, 0,0, width, height);
  fill(r, g, b, 175);
     
     if (frameCount > 50 && frameCount < 240) {
      textAlign(CENTER);
      text("Written and directed by", 375, 275);
      text("THE WACHOWSKI BROTHERS", 375, 300);
     }
     
      if (frameCount > 260) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p1, 275);
      p1 +=30 ;
      }
      
      if (frameCount > 280 && frameCount < 480) {
      textAlign(CENTER);
      text("produced by", 375, 275);
      text("JOEL SILVER", 375, 300); 
      }
      
      
      if (frameCount > 500) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p2, 275);
      p2 +=30 ;
      }
           
      if (frameCount > 520 && frameCount < 720) {
      textAlign(CENTER);
      text("executive producers", 375, 275);
      text("BAARRIE M. OSBORNE", 375, 300); 
      text("ANDREW MASON", 375, 325);
      }
      
      if (frameCount > 740) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p3, 275);
      p3 +=30 ;
      }
      
      if (frameCount > 760 && frameCount < 960) {
      textAlign(CENTER);
      text("executive producers", 375, 275);
      text("ANDY WACHOWSKI", 375, 300); 
      text("LARRT WACHOWSKI", 375, 325);
      text("ERWIN STOFF", 375, 350);
      text("and BRUCE BERMAN", 375, 375);
      }
      
      if (frameCount > 980) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p4, 275);
      p4 +=30 ;
      }
      
      if (frameCount > 1000 && frameCount < 1200) {
      textAlign(CENTER);
      text("director of photography", 375, 275);
      text("BILL POPE", 375, 300); 
      }
      
      if (frameCount > 1220) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p5, 275);
      p5 +=30 ;
      }
      
      if (frameCount > 1240 && frameCount < 1440) {
      textAlign(CENTER);
      text("production designer", 375, 275);
      text("OWEN PETERSON", 375, 300); 
      }
      
      if (frameCount > 1460) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p6, 275);
      p6 +=30 ;
      }
      
      if (frameCount > 1480 && frameCount < 1680) {
      textAlign(CENTER);
      text("editor", 375, 275);
      text("ZACH STAENBERG", 375, 300); 
      }
      
      if (frameCount > 1700) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p7, 275);
      p7 +=30 ;
      }
      
      if (frameCount > 1720 && frameCount < 1920) {
      textAlign(CENTER);
      text("costume designer", 375, 275);
      text("KYM BARRET", 375, 300); 
      }
      
      if (frameCount > 1940) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p8, 275);
      p8 +=30 ;
      }
      
      if (frameCount > 1960 && frameCount < 2160) {
      textAlign(CENTER);
      text("co-producer", 375, 275);
      text("DAN CRACCHIOLO", 375, 300); 
      }
      
      if (frameCount > 2180) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p9, 300);
      p9 +=30 ;
      }
      
      if (frameCount > 2200 && frameCount < 2400) {
      textAlign(CENTER);
      text("KEANU REEVES", 375, 300); 
      }
      
      if (frameCount > 2420) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p10, 300);
      p10 +=30 ;
      }
      
      if (frameCount > 2440 && frameCount < 2640) {
      textAlign(CENTER);
      text("LAURENCE FISHBURNE", 375, 300); 
      }
      
      if (frameCount > 2660) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p11, 300);
      p11 +=30 ;
      }
      
      if (frameCount > 2680 && frameCount < 2880) {
      textAlign(CENTER);
      text("CARRIE-ANNE MOSS", 375, 300); 
      }
      
      if (frameCount > 2900) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p12, 300);
      p12 +=30 ;
      }
      
      if (frameCount > 2920 && frameCount < 3120) {
      textAlign(CENTER);
      text("HUGO WEAVING", 375, 300); 
      }
      
      if (frameCount > 3120) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p13, 300);
      p13 +=30 ;
      }
      
      if (frameCount > 3140 && frameCount < 3340) {
      textAlign(CENTER);
      text("GLORIA FOSTER", 375, 300); 
      }
      
      if (frameCount > 3360) {
      text( " A L Y P M J J M Q S U Z N I P U Y A Q M I B S R S Q A Z N G G'", p14, 300);
      p14 +=30 ;
      }
      
      if (frameCount > 3380 && frameCount < 3580) {
      textAlign(CENTER);
      text("and JOE PANTOLIANO", 375, 300); 
      }
               
  
}

      void mouseClicked(){                              // Aca coloque un evento para que cada vez que se presione mouse1, se reinicien los creditos
      frameCount = 0;
      song.amp(0);
      song.play();
      setup();
      }
