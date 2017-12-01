import processing.sound.*;

AudioIn mikrofon;
Amplitude natezenie;

void setup() {
  size(500, 500);
  background(255);

  mikrofon = new AudioIn(this, 0);

  mikrofon.start();


  natezenie = new Amplitude(this);

  natezenie.input(mikrofon);
}      


void draw() {
  background(125, 255, 125);

  noStroke(); 
  fill(255, 0, 150);
  float rozmiar = natezenie.analyze()*300;
  ellipse(width/2, height/2, rozmiar, rozmiar);
}