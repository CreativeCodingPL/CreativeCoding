float R = 150;

void setup() {
  size(500, 500);
  frameRate(1);
}
void draw() {
  //triangle(30, 75, 58, 20, 86, 75);
  background(128);
  noFill();
  stroke(255,0,0);
  
  
  
  beginShape();
  for (int i=0; i<5; i++) {
    vertex(i*100, random(height));
  }
  endShape();
}
