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
int t = 0;
void setup() {
    size(800, 400);
    background(255);
    frameRate(2);
    falka = new SinOsc(this);
    
    falka.play();
}

void draw() {  
  if(t == 0) background(255);;
  falka.freq(nuty[t]);
  strokeWeight(25000/nuty[t]);
  point(70+t*90, 200);
  if(t < nuty.length-1) 
    t++;
  else
    t = 0;
}