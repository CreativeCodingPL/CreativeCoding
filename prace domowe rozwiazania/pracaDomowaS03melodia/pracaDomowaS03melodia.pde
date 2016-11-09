import processing.sound.*;

SinOsc falka;
float[] nuty = {
261.625565, //C1
261.625565*1.22462, 
261.6255652*1.22462*1.22462, 
261.625565*1.22462*1.22462*1.22462, 
261.625565*1.22462*1.22462*1.22462*1.22462, 
261.625565*1.22462*1.22462*1.22462*1.22462*1.22462, 
261.625565*1.22462*1.22462*1.22462*1.22462*1.22462*1.22462, 
261.625565*1.22462*1.22462*1.22462*1.22462*1.22462*1.22462*1.22462 
};
int[] melodia = {0,2,0,3,4,5,2,3,4,7};
int t = 0;
void setup() {
    size(500, 500);
    background(255);
    frameRate(3);
    falka = new SinOsc(this);
    
    falka.play();
}

void draw() {  
  background(255);
  falka.freq(nuty[melodia[t]]);
  strokeWeight(300-melodia[t]*25);
  point(250, 250);
  if(t < melodia.length-1) 
    t++;
  else
    t = 0;
}