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
 float nuta = noise(frameCount*0.1+1000);
 float glos = noise(frameCount*0.01+100000);
 falaDzwiekowa.freq(map(nuta, 0, 1, 200, 1000));
 falaDzwiekowa.amp(glos);
}