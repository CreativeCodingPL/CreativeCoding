import processing.sound.*;

SinOsc falaDzwiekowa1;
SinOsc falaDzwiekowa2;


void setup() {
    size(300, 300);
    background(255);
    
  falaDzwiekowa1 = new SinOsc(this);
  falaDzwiekowa2 = new SinOsc(this);
    

    falaDzwiekowa1.play();
    falaDzwiekowa2.play();
    falaDzwiekowa1.pan(0);
    falaDzwiekowa2.pan(1);
    frameRate(16);
}

void draw() {
 float nuta1 = noise(frameCount*0.1+1000);
 float nuta2 = noise(frameCount*0.101+1000);
 float glos = noise(frameCount*0.01+100000);
 falaDzwiekowa1.freq(map(nuta1, 0, 1, 200, 1000));
 falaDzwiekowa2.freq(map(nuta2, 0, 1, 200, 1000));
 falaDzwiekowa1.amp(glos);
 falaDzwiekowa2.amp(1.0-glos);
}