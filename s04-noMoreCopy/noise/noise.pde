float x = 0;
float y;
float amplitude = 100.0;
float frequency = 1.0;
float limit = 5.0;
float t = 0;

void setup() {
  size(700, 400);
  strokeWeight(3);
  stroke(0, 100);
}

void draw() {
  background(255);
  frequency = mouseX*0.01;
  amplitude = mouseY*0.5;
  x = 0;
  while (x < limit) {
    y = noise(x * frequency + t);
    t = t + 0.00003;
    y = y * amplitude;
    point(x*width/limit, height*0.5 - y);
    x = x + 0.01;
  }
}