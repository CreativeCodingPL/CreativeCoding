PShape ksztalt;
String nazwaPliku = "lightning.svg";

void setup(){
 //wczytamy ksztalt
 
 size(800, 800);
 
 ksztalt = loadShape(nazwaPliku);
 //ksztalt = loadShape("lightning.svg");
 shapeMode(CENTER);
}
void draw(){
  background(255);
  //narysujemy ksztalt
  for(int i=0;i<100; i= i+1){
    shape(ksztalt, random(width), random(height), 100, 100);
  }
}