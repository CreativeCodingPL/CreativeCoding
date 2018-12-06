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

  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(5);

  points = napis.getPoints();
}

void draw() {
  //background( 255 );
  translate(width/2, 3*height/4);

  strokeWeight(random(3, 18));
  int index = int(random(0, points.length));
  RPoint p1 = points[ index ];
  
  stroke( lerpColor( #FF00A2, #12D1FF, map( index, 0, points.length, 0, 1)  ) , 50);
  point(p1.x, p1.y);
}
