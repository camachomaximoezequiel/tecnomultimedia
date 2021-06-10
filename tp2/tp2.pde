// TP 2 Animacion con secuencia de creditos

import processing.sound.*;
SoundFile song;
float timeInterval;
float timePast;
int textAlpha = 100;
int textFade = 2;
PImage fondo; 
PFont fuente;
int py;

void setup () {
  
  size(400, 400);
  song= new SoundFile(this,"song.mp3");
  song.play();
  song.amp(0.25);
  timePast = millis();
  timeInterval = 2000.0f;
  fondo = loadImage("fondo.jpg");
  fuente = loadFont("fuente.vlw");
  textFont(fuente);
  py = 400;
}
  
void textFade() {
  if (millis() > timeInterval + timePast) {
    timePast = millis();
    textFade *= -1;
 }
 textAlpha += textFade;
}
  
void draw () {
    println (mouseX);
    image(fondo, 0,0, width, height);
    textFade();
    textFont (fuente);
    textSize(40);
    fill(0, 120, 200, textAlpha);

    if (frameCount> 0 && frameCount < 240) {
      text("Star Wars: Episode VI", 25, 200);
    }
   
    if (frameCount > 280 && frameCount < 480) {
      text("Direct by", 125, 150);
      text("RICHARD MARQUAND", 15, 220);
    }
        
    if (frameCount > 520 && frameCount < 720) {
      text("Screenplay by", 85, 150);
      text("LAWRANCE KASDAN", 25, 220);
    }
    
    if (frameCount > 760 && frameCount < 960) {
      text("Story by", 125, 150);
      text("GEORGE LUCAS", 65, 220);
    }
    
    if (frameCount > 1000 && frameCount < 1200) {
      text("Produced by", 85, 150);
      text("HOWARD KANJIAN", 30, 220);
    }
    
     if (frameCount > 1240 && frameCount < 1440) {
      text("Executive Producer", 40, 150);
      text("GEORGE LUCAS", 60, 220);
    }

    textSize(20);
    fill(0, 120, 200);
    if (frameCount > 1500 || frameCount > 1500) {
    text("  Luke Skywalker          MARK HAMILL\n  Han Solo                      HARRISON FORD\n  Princess Leia              CARRIE FISHER\n  R2 - D2                        KENNY BAKER\n  Moff Jerjerrod             MICHAEL PENNIGTON\n  Admiral Piett              KENNETH COLLER\n  Bif Fortuna                  MICHAEL CARTER\n  Wedge                         DENIS LAWSON\n  Admiral Ackbar          TIM ROSE", 0, py);
    py --;
    }
}
    void mouseClicked(){
      frameCount = 0;
      song.amp(0);
      song.play();
      textAlpha = 100;
      textFade = 2;
      setup();

    }
    
    
