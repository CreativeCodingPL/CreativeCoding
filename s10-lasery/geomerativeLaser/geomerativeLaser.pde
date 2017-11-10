import geomerative.*;
import hpglgraphics.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(1104, 772);

  background(255);
  noFill();
  stroke(0);

  HPGLGraphics canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
  RG.init(this);

  napis = RG.getText("Cod", "FreeSans.ttf", 68, LEFT);

  float sizeX = mmToHPGL(33);
  float sizeY = mmToHPGL(33);
  rect(0, 0, sizeX, sizeY);

  beginRecord(canvas);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(25);

  points = napis.getPoints();
  rect(5, 50, sizeX-10, sizeY-50);
  beginShape();
  for (int nr=0; nr<points.length; nr++) {
    vertex(points[nr].x+3, points[nr].y+120);
  }
  endShape();

  endRecord();
}

float mmToHPGL(float mm) 
{
  float cale = (mm * 0.1) / 2.54;
  float hpgl = 1016 * cale * 0.1;
  return hpgl;
}