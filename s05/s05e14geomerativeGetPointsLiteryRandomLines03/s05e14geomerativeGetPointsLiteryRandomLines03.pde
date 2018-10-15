import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(750, 500);

  background(255);
  
  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);

  translate(width/2, 3*height/4);
  stroke(0, 15);
}

void draw() {

  translate(width/2, 3*height/4);

  points = napis.getPoints();

  for (int i = 0; i<napis.children.length; i++) {
    RShape litera = napis.children[i];
    points = litera.getPoints();
    RPoint c = litera.getCenter();
    RPoint p = points[int(random(0, points.length))];
    line(c.x, c.y, p.x, p.y);
  }
}