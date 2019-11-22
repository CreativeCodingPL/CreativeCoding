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

  stroke(#0CDDF2, 40);
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(5);

  points = napis.getPoints();
}

void draw() {

  translate(width/2, 3*height/4);

  strokeWeight(5);
  RPoint p1 = points[int(random(0, points.length))];
  point(p1.x+noise(frameCount/100)*10, p1.y+noise(frameCount/100+1000)*10);
}