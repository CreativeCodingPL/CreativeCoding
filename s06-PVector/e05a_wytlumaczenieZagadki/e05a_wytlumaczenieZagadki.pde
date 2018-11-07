void setup(){
 size(500,500); 
 frameRate(2);
 //noLoop();
}

void draw(){
  background(255);
  translate(250,250);
  scale(10);
  strokeWeight(0.1);
  PVector losowy =  PVector.random2D();
  
  //PVector losowy2 = new PVector(random(-1,1), random(-1,1));
  //line(0,0, losowy2.x, losowy2.y);
  //point(losowy.x, losowy.y);
  stroke(0);
  point(0,0);
  strokeWeight(1);
  //point(losowy.x, losowy.y);
  stroke(255,0,0);
  losowy.mult(10);
   point(losowy.x, losowy.y);
   stroke(0,0, 255);
   PVector przesuniecie = new PVector(-10, 2);
   losowy.add(przesuniecie);
   point(losowy.x, losowy.y);
}
