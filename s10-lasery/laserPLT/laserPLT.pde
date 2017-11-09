import hpglgraphics.*;

void setup() {
  size(1104, 772);
  
  stroke(0);
  background(255);
  noFill();
    
  // HPGL (Roland DXY-1350A) coordinate ranges:
  // A4 : 11040 x 7721 (297 x 210 mm)
  // A3 : 16158 x 11040 (420 x 297 mm)
  
  HPGLGraphics hpgl = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  hpgl.setPaperSize("A4");
  hpgl.setPath("output.plt");
  
  beginRecord(hpgl);
  
  rect(200, 200, 200, 200);

  endRecord();
  
}

void draw() {

}