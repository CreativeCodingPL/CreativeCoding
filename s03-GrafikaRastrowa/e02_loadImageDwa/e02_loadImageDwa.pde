PImage grafika;

void setup(){
   size(500, 500);
   grafika = loadImage("kot.jpg");
   strokeWeight(50);
   stroke(100);
   imageMode(CENTER);
}

void draw(){
   image(grafika, 250, 250); 
}
