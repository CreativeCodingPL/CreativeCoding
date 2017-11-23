import hpglgraphics.*;
HPGLGraphics canvas; //deklaracja HPGLGraphics

int divX = 22;

void setup() {
  size(1104, 772);

  background(255);
  noFill();
  stroke(0);

  canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
}

void draw() {
  rectMode(CENTER);

  // 1. laser cut rzad kolek
  // !!! trzeba narysowac elipse z 1% roznicy z jednej strony a nie circle !!!

  beginRecord(canvas); //rysujemy cala geometrie ktora chcemy zapisac pomiedzy begin a end shape
  for (int i=1; i<divX; i++) { //piony    
    int locY = height/divX * i;
    ellipse(width/2, locY, 10, 10.1); //elispa z 1% roznicy z jednej strony - wytnie sie dobrze na laserze, z kolem bedzie problem
  }
  endRecord();


  noLoop();
}