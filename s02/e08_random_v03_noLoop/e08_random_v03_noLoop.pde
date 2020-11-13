void setup() {
  size(500, 500);
  background(255);
  strokeWeight(30);
  stroke(0, 50);
}

void draw() {
  point(random(100, 400), random(100, 400));
  if(frameCount > 120) noLoop(); 
}
