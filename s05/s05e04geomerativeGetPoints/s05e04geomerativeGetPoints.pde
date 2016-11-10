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

  //RG.setPolygonizer(RG.ADAPTATIVE);

}

void draw() {
  background(255);

  translate(width/2, 3*height/4);

  noFill();
  stroke(0, 0, 200, 150);
  //napis.draw();

  //RG.setPolygonizer(RG.UNIFORMSTEP);
  //RG.setPolygonizerStep(0.1);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(15);

  points = napis.getPoints();

  stroke(#0CDDF2);
  strokeWeight(3);
  for (int i=0; i<points.length; i++) {
    point(points[i].x, points[i].y);
  }
}