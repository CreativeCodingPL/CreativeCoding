import processing.sound.*;

SinOsc falka;

void setup() {
    size(500, 500);
    background(255);

    falka = new SinOsc(this);
    
    falka.play();
}

void draw() {
    
}