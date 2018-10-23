PImage grafika;

void setup(){
   size(500, 500);
   grafika = loadImage("kot.jpg");
   strokeWeight(50);
   stroke(100);
   noFill();
}

void draw(){
   image(grafika, random(400), random(400)); 
}
