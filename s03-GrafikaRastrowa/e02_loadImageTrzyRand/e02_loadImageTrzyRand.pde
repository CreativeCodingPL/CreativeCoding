PImage grafika1;
PImage grafika2;
PImage grafika3;

void setup(){
   size(500, 500);
   grafika1 = loadImage("kot.jpg");
   grafika2 = loadImage("pies.jpg");
   grafika3 = loadImage("kanarek.jpg");
   strokeWeight(50);
   stroke(100);
   imageMode(CENTER);
}

void draw(){
   float d1 = random(-10, 10);
   float d2 = random(-10, 10);
   image(grafika2, 250+d1, 250+d2);
   if(frameCount > 2.5*30) 
     image(grafika1, 250+d1, 250+d2);  
   if(frameCount > 4.5*30) 
     image(grafika3, 250+d2, 250+d1); 
   if(frameCount > 6*30)
     frameCount = 1;
}
