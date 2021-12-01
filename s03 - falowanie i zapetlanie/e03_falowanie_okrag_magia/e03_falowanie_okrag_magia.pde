void setup() {
  size(500, 500);
  strokeWeight(10);
  background(255);
  stroke(0, 30);  
}

void draw() {
  point(250+100*cos(frameCount*0.03121), 250+100*sin(frameCount*0.051));
}
