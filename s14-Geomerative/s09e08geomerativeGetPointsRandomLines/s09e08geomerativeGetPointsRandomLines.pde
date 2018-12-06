import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(700, 500);

  
  //fill(#0CDDF2);
  stroke(105);

  RG.init(this);

  napis = RG.getText("Coding", "FreeSans.ttf", 172, CENTER);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(10);
  translate(width/2, 3*height/4);
  noFill();
  napis.draw();
  //
}

void draw() {
  
  background(50);

  translate(width/2, 3*height/4);
  
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPoint[] letterPoints = napis.children[j].getPoints();
    RPoint center = napis.children[j].getCenter();
    
    for( int i = 0; i < letterPoints.length; i ++ ){
      
      float ratio = map( i, 0, letterPoints.length, 0, 1 );
      color c = lerpColor( #FCFC00, #34FFFD, ratio );
      
      stroke( c, 80 );
      line( center.x + mouseX/2.0, center.y + mouseY/2.0, letterPoints[i].x, letterPoints[i].y );
      
    }
    
  }

  //points = napis.getPoints();

  //RPoint p1 = points[int(random(0,points.length))];
  //RPoint p2 = points[int(random(0,points.length))];
  //line(p1.x, p1.y, p2.x, p2.y);
}
