void setup() {
  size(800, 800);
}
void draw() {
  //triangle(30, 75, 58, 20, 86, 75);
  background(128);
  
  beginShape();
  
  vertex(30, 75);
  vertex(58, 20);
  vertex(86, 75);
  
  endShape(CLOSE);
  
}
