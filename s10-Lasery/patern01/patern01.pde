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
  
  rectMode(CENTER);
  stroke(255,0,0);
  ellipse(200, 200, 350, 351);
  stroke(0);
  for(int x = 10; x < 400; x = x + 20)
    for(int y = 10; y < 400; y = y + 20) 
    {
        float d = dist(x,y, 200, 200);
        rect(x,y, 28-d*0.03, 28-d*0.03);
    }
  
  endRecord();
  
}
