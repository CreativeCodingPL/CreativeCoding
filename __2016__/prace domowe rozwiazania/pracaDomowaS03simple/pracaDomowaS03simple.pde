import processing.sound.*;

SinOsc falka;

float[] nuty = {443, 500, 350, 490, 300, 520, 510, 410, 310};
int t = 0;

void setup() {
    size(800, 400);
    background(255);
    frameRate(2);
    
    falka = new SinOsc(this);
    falka.play();
}

void draw() {  
  falka.freq(nuty[t]);
  if(t < nuty.length-1) 
    t++;
  else
    t = 0;
}