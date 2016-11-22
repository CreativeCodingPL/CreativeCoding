size(500, 500);
stroke(0, 100);
strokeWeight(10);
background(255);

PVector w1 = new PVector(250, 250);

PVector w2 = new PVector(30, 0);

point(w1.x, w1.y);

w1.add(w2);

point(w1.x, w1.y);
for (int i=0; i<12; i++) {
  w2.rotate(radians(25));
  w1.add(w2);
  point(w1.x, w1.y);
}