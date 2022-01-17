PVector gdzieJest;
PVector predkosc;

void setup() {
  size(500, 500);
  gdzieJest = new PVector(250, 250);
  predkosc = PVector.random2D(); //predkosc jeden w losowym kierunku
  strokeWeight(15);
}

void draw() {
  background(255);
  point(gdzieJest);
  gdzieJest.add(predkosc);
}

void point(PVector v) {
  point(v.x, v.y);
}
