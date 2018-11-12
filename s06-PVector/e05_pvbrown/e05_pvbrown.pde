int x = 0;
float a = 23.45;
color c = color(255,0, 10); //#ff00e3

PVector p = new PVector(200, 100);

void setup(){
 size(500, 500); 
 frameRate(1);
}

void draw(){
  // ellipse(p.x, p.y, 100, 100);
  PVector losowy =  PVector.random2D();
  PVector nowyPunkt = PVector.add(p, losowy.mult(10.0));
  
  strokeWeight(1);
  line(p.x, p.y, nowyPunkt.x, nowyPunkt.y);
  strokeWeight(3);
  point(p.x, p.y);
  
  p = nowyPunkt;
}
