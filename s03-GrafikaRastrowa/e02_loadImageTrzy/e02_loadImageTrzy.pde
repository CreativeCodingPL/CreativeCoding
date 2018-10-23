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
   image(grafika2, 250, 250);
   if(frameCount > 2.5*30) 
     image(grafika1, 250, 250);  
   if(frameCount > 4.5*30) 
     image(grafika3, 250, 250); 
   if(frameCount > 6*30)
     frameCount = 1;
}
