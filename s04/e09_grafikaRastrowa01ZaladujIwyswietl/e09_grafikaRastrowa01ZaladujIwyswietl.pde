PImage dziura;

void setup(){
  size(500, 500);
  background(255);
  dziura = loadImage("czarna.png");
}

void draw(){
  image(dziura, 20, 20); 
  image(dziura, 200, 200, 100, 100);
  image(dziura, 300, 300, dziura.width/5, dziura.height/5);
  //kropa sluzy do rozmowy z obiektami. Pytamy dziure jaki ma rozmiar
}
