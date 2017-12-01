import processing.sound.*;

SinOsc falaDzwiekowa;


void setup() {
    size(300, 300);
    background(255);
    
  falaDzwiekowa = new SinOsc(this);
    

    falaDzwiekowa.play();
    frameRate(16);
}

void draw() {
 falaDzwiekowa.freq(map(mouseX, 0, 300, 200, 1000));
 falaDzwiekowa.freq
}