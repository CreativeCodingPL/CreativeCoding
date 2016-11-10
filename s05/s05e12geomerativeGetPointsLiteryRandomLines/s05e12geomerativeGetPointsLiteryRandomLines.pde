import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(750, 500);

  background(255);
  fill(#0CDDF2);
  stroke(105, 150);

  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);

  translate(width/2, 3*height/4);
  noFill();
  napis.draw();
  stroke(#0CDDF2, 20);
}

void draw() {

  translate(width/2, 3*height/4);

  points = napis.getPoints();

  for (int i = 0; i<napis.children.length; i++) {
    RShape litera = napis.children[i];
    points = litera.getPoints();
    RPoint p1 = points[int(random(0, points.length))];
    RPoint p2 = points[int(random(0, points.length))];
    line(p1.x, p1.y, p2.x, p2.y);
  }
}