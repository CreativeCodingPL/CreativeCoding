void setup() {
  size(500, 500);
  strokeWeight(5);
  background(255);
}

void draw() {
  //background(255);
  float fala = 10 * sin(frameCount*0.3) + 20*sin(frameCount*0.1) ;
  point(250+(100+fala)*cos(frameCount*0.03), 250+(100+fala)*sin(frameCount*0.03));
}
