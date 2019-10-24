float pozX; 
float pozY;
float wielkosc;
float t = 0;

void setup() {
  size(500, 500);  
  strokeWeight(20);
  rectMode(CENTER);
}

void draw() {
  background(255);
  rect(width/2, height/2, 200, 200);
  pozX = map(noise(t), 0, 1, width/2-80, width/2+80); //wartosc noise z czasu t
  pozY = map(noise(t+10000), 0, 1, height/2-80, height/2+80); //wartosc z czasu o 10000 "lat" dalej.
  wielkosc = map(noise(t+100), 0, 1, 10, 50); //wartosc z czasu o 10000 "lat" dalej.
  strokeWeight(wielkosc);
  point(pozX, pozY);
  t = t + 0.01;
}
