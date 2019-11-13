void setup() {
  size(1200, 400);
  colorMode(HSB);
  background(80, 130, 150);
  frameRate(60);
}

void draw() {
  background(120, 130, 150); //wymazuje ekran po kazdej klartce!!!
  strokeWeight(5);
  stroke(0, 200, 255, 150);
  line(width-50, 0, width-50, height);
  //frameCount to licznik klatek, po każdej klatce animacj zwiększa sie o jeden
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  point(frameCount*3.06, height*0.2);
  point(frameCount*3.01, height*0.4);
  point(frameCount*3.17, height*0.6);
  point(frameCount*3.03, height*0.8);

  if (frameCount*3>width+50) frameCount = -50;
} 
