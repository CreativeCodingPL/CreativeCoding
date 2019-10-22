float pozycja;
float predkosc;

void setup() {
  size(1200, 400);
  colorMode(HSB);
  background(80, 130, 150);
  frameRate(60);
  pozycja = width/2;
  predkosc = 3;
}

void draw() {
  background(120, 130, 150); //wymazuje ekran po kazdej klartce!!!
  strokeWeight(5);
  stroke(0, 200, 255, 150);
  line(width-50, 0, width-50, height);
  line(50, 0, 50, height);
  //frameCount to licznik klatek, po każdej klatce animacj zwiększa sie o jeden
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  point(pozycja, height/2);
  
  pozycja = pozycja + predkosc;
  
  if(pozycja > width-50) predkosc = -3; 
  if(pozycja < 50) predkosc = 3; 
} 
