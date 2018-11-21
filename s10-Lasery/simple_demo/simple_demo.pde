import hpglgraphics.*;

void setup() {
  size(1104, 772); //29.7 cm = 1104 px poziom, 772 px = 21 cm
  
  stroke(0);
  background(255);
  noFill();
    
  // HPGL (Roland DXY-1350A) coordinate ranges:
  // A4 : 11040 x 7721 (297 x 210 mm)
  // A3 : 16158 x 11040 (420 x 297 mm)
  
  HPGLGraphics laser = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  laser.setPaperSize("A4");
  laser.setPath("output.plt");
  
  // (most) things between begin- and endRecord are written to the .hpgl file
  beginRecord(laser);
  
  rect(200, 200, 200, 200);
  ellipse(800, 300, 201, 200); //elipsa nie moze byc kolem, laser tego nie ogsluguje
  
  endRecord();
  
}
