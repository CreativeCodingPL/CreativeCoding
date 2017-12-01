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
  
   background(125, 255, 125);
}      


void draw() {

  stroke(0, 40); 
  strokeWeight(3);
  fill(255, 0, 150);
  float rozmiar = natezenie.analyze()*300;
  line(frameCount % width, height/2 - rozmiar, frameCount % width, height/2 + rozmiar);
}