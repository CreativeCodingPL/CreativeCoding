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
  
  for(int i = 0; i<napis.children.length; i++) 
  {
    napis.children[i].rotate(PI/100, napis.children[i].getCenter());
  }
  napis.draw();
}