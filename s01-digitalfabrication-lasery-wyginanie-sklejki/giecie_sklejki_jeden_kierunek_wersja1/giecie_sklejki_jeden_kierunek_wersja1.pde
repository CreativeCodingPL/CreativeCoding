import hpglgraphics.*;
HPGLGraphics canvas; //deklaracja HPGLGraphics

int przerwaY = 15;
int przerwaX = 100;

int szerokosc = 400;

void setup() {
  size(1104, 772);
  
  canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
}

void draw() {
  background(255);
  
  //this for a start:
  rect(przerwaX, przerwaY, szerokosc-przerwaX, 5);
  rect(0, przerwaY*2, szerokosc-przerwaX, 5);
  
}