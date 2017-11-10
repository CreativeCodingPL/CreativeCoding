void setup() {
  size(500, 500);
}

void draw() {
  background(102);
  stroke(205);
  strokeWeight(7);
  translate(width/2, height/2);
  for(int i = 0; i<10; i++) {
    rotate(2*PI/10.0);
    point(100+50*noise(i+frameCount/100.0),0);
  }
}