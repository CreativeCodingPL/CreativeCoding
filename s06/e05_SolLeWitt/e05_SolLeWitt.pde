// Wall Drawing 335
// https://massmoca.org/event/walldrawing335/

float steps = 100;
float bok;
float R;
boolean kolo = false;
void setup() {
  size(800, 800);
  bok = 2*width/3.0;
  R = width/3.0;
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(1.5);
  float step = width/steps;
  for (float x=step; x<width; x+=step) {
    line(x, 0, x, height);
  }

  fill(0);
  if (!kolo) {
    float startX = (width-bok)/2.0;
    float startY = (height-bok)/2.0;
    rect(startX, startY, bok, bok);
    for (float y=startY; y<startY+bok; y+=step) {
      line(startX, y, startX+bok, y);
    }
  } else {
    ellipse(width/2, height/2, R*2, R*2);
    for (float y=step; y<height; y+=step) {
      float x1 = width/2 - sqrt(sq(R)-sq(y-height/2));
      float x2 = width/2 + sqrt(sq(R)-sq(y-height/2));
      line(x1, y, x2, y);
    }
  }
}
void keyPressed() {
  kolo = !kolo;
}
