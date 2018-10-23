PImage grafika;

void setup(){
   size(500, 500);
   grafika = loadImage("kot.jpg");
}

void draw(){
   image(grafika, 100, 150); 
}
