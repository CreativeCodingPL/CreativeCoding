import geomerative.*;

RShape napis;

void setup(){
  size(600,400);
  RG.init(this);

  fill(#0CDDF2);
  stroke(105);
  
  napis = RG.getText("Creative Coding", "FreeSans.ttf", 72, CENTER);
}

void draw(){
  background(255);
  
  translate(width/2, height/2);
  
  RShape litera = napis.children[3];
  litera.rotate(PI/300);
  
  litera = napis.children[6];
  RPoint srodek = litera.getCenter();
  litera.rotate(PI/200, srodek);

  napis.draw();
}