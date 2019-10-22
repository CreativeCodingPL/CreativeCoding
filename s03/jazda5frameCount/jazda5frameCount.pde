void setup() {
  size(1200, 400);
  colorMode(HSB);
  background(60, 130, 150);
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  frameRate(60);
}

void draw() {
  //frameCount to licznik klatek, po każdej klatce animacj zwiększa sie o jeden
  point(frameCount, height*0.33);
  point(width-frameCount, height*0.66);
} 
