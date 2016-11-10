import geomerative.*;

RShape napis;

void setup(){
  size(600,600);
  
  RG.init(this);

  fill(#0CDDF2);
  stroke(105);
  napis = RG.getText("Creative Coding", "FreeSans.ttf", 72, CENTER);
}

void draw(){
  background(255);
  translate(width/2, 100+height/2);
  scale(1+frameCount/100.0);
  napis.draw();
}