/**
 * Sine. 
 * 
 * Smoothly scaling size with the sin() function. 
 */
 
float diameter; 
float angle = 0;

void setup() {
  size(500, 400);
  stroke(255, 204, 0);
  strokeWeight(3);
}

void draw() {
  
  background(0);
  stroke(150);
  strokeWeight(1);
  line(0, height/2, width, height/2);
  strokeWeight(3);
  stroke(255, 204, 0);
  for(float kat = 0; kat<2*PI; kat=kat+0.05)
  {
    float wartosc = sin(kat);
    float x = map(kat, 0, 2*PI, 0, width);
    float y = map(wartosc, -1, 1, height-100, 100);
    point(x, y);
  }
}