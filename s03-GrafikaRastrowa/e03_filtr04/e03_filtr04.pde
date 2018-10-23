PImage grafika;

void setup(){
   size(500, 500);
   grafika = loadImage("lew.jpg");
   image(grafika, 0, 0);
}

void draw(){
   float x = random(500);
   float y = random
   color podKursorem = grafika.get(mouseX, mouseY);
   stroke(podKursorem, 150);
   strokeWeight(50);
   point(mouseX, mouseY);
}
