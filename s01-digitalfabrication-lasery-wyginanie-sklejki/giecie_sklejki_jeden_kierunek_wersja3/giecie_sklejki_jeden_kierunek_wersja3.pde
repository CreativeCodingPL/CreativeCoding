import hpglgraphics.*;
HPGLGraphics canvas; //deklaracja HPGLGraphics

int numX = 10;
int numY = 20;

boolean record = false; //boolean posluzy do uruchamiania eksportu

int sizeX = 400;
int sizeY = 600;

void setup() {
  size(1104, 772);

  canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
}

void draw() {
  background(255);
  rectMode(CENTER); //rysowanie kwadratu od środka
  noFill();

  if (record == true) {
    beginRecord(canvas);
  }

  ///*
  for (int i=1; i<numX; i++) {
    for (int j=1; j<numY; j++) {
      rect(width/numX*i, height/numY*j, 70, 5);
    }
  }
  //*/
  //rect(0, 0, sizeX*2, sizeY*2);

  if (record == true) {
    endRecord();
    print("eksport ok!");
    record=false;
  }
}

void keyPressed() {
  record = true;
}