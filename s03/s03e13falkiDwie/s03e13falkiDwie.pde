import processing.sound.*;

SinOsc falka1;
SinOsc falka2;

void setup() {
    size(500, 500);
    background(255);

    falka1 = new SinOsc(this);
    falka2 = new SinOsc(this);
    
    falka1.play();
    falka2.play();
}

void draw() {
    
  falka1.freq(mouseX);
  falka2.freq(mouseY);
 
}