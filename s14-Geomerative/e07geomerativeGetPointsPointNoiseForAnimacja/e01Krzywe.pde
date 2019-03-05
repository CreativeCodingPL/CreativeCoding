import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(750, 500);

  background(255);
  stroke(#0CDDF2, 100);
  fill(#2708FC);

  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);

  translate(width/2, 3*height/4);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(6);

  points = napis.getPoints();
}

void draw() {
  background(255);

  translate(width/2, 3*height/4);

  strokeWeight(5);
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPoint[] letterPoints = napis.children[j].getPoints();
    
    beginShape();
    for (int i = 0; i< letterPoints.length; i++) {
      RPoint p1 = letterPoints[i];
      vertex(p1.x+noise(frameCount/100.0+i/30.0)*30, p1.y+noise(frameCount/100.0+i/30.0+10000)*30);
    }
    endShape();
  }
}
