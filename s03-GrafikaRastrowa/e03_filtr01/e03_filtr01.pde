PImage grafika;

void setup(){
   size(500, 500);
   grafika = loadImage("lew.jpg");
}

void draw(){
   image(grafika, 0, 0);
   color podKursorem = grafika.get(mouseX, mouseY);
   stroke(podKursorem, 150);
   strokeWeight(50);
   point(mouseX, mouseY);
}
