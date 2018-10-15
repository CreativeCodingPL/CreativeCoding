import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(750, 500);

  background(255);
  noFill();

  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(15);

  points = napis.getPoints();
}

void draw() {
  background(255);

  translate(width/2, 3*height/4);

  stroke(#0CDDF2,80);
  strokeWeight(3);
  for (int i=0; i<points.length; i++) {
    ellipse(points[i].x, points[i].y, mouseX/10.0,mouseX/10.0);
  }
}