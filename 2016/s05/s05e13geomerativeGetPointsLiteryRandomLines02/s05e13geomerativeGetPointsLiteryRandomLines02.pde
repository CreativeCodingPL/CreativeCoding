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
  stroke(0, 20);
}

void draw() {

  translate(width/2, 3*height/4);

  points = napis.getPoints();

  for (int i = 0; i<napis.children.length; i++) {
    RShape litera = napis.children[i];
    points = litera.getPoints();
    RPoint p = points[int(random(0, points.length))];
    float dx = random(-20,20);
    float dy = random(-20,20);
    line(p.x-dx, p.y-dy, p.x+dx, p.y+dy);
  }
}