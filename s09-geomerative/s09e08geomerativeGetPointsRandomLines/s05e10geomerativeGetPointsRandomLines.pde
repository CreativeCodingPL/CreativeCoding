import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(700, 500);

  background(255);
  fill(#0CDDF2);
  stroke(105);

  RG.init(this);

  napis = RG.getText("Coding", "FreeSans.ttf", 172, CENTER);

  RG.setPolygonizer(RG.ADAPTATIVE);
  translate(width/2, 3*height/4);
  noFill();
  napis.draw();
  stroke(#0CDDF2, 20);
}

void draw() {

  translate(width/2, 3*height/4);

  points = napis.getPoints();

  RPoint p1 = points[int(random(0,points.length))];
  RPoint p2 = points[int(random(0,points.length))];
  line(p1.x, p1.y, p2.x, p2.y);
}