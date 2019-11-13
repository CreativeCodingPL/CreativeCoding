int costam = 0;

void setup () {  
  size(800, 800);
  rectMode(CENTER);
}
void draw() {
  morda(random(width), random(height));
}

void morda(float x, float y) {
  fill(255);
  ellipse(x, y, 100, 100);
  fill(0);
  rect(x-30, y-20, 10, 10);
  rect(x+30, y-20, 10, 10);
  noFill();
  strokeWeight(4);
  arc(x, y, 70, 70, 0, radians(180));
  // println(degrees(TWO_PI));
}
