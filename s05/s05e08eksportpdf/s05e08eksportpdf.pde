import processing.pdf.*; //

PShape ksztalt;
String nazwaPliku = "lightning.svg";

void setup(){
 //wczytamy ksztalt
 
 size(800, 800, PDF, "eksport.pdf"); //
 
 ksztalt = loadShape(nazwaPliku);
 //ksztalt = loadShape("lightning.svg");
 ksztalt.disableStyle();
 shapeMode(CENTER);
}
void draw(){
  background(255);
  //narysujemy ksztalt
  for(int i=0;i<100; i= i+1){
    stroke(random(20), 0, random(255));
    shape(ksztalt, random(50, width-50), random(50,height-50), 100, 100);
  }
  exit(); //
}