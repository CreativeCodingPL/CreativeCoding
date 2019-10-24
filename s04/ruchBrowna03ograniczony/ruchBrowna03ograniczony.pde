float pozX; 
float pozY;

void setup() {
  fullScreen();  
  pozX = width/2;
  pozY = height/2;
  strokeWeight(20);
  rectMode(CENTER);
}

void draw() {
  background(255);
  rect(width/2, height/2, 200, 200);
  point(pozX, pozY);
  pozX = pozX + random(-5, 5); //mała zmiana w dwie strony
  pozY = pozY + random(-5, 5); //mała zmiana w dwie strony
  pozX = constrain(pozX,width/2-80,width/2+80); //pozX nie przekroczy podanego zakresu
  pozY = constrain(pozY,height/2-80,height/2+80); //pozY nie przekroczy podanego zakresu
}
