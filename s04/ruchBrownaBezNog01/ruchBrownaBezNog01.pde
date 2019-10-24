void setup() {
  fullScreen();  
  strokeWeight(20);
}

void draw() {
  background(255);
  point(random(width/2, width/2+10), random(height/2, height/2+10));
}
