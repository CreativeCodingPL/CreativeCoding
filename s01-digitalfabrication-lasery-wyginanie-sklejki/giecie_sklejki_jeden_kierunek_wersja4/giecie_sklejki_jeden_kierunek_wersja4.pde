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

  for (int i=25; i<sizeX; i+=50) {
    for (int j=10; j<sizeY-5; j+=20) {    
      rect(i, j, 30, 3);

      if (j<sizeY-20) { //uzuniecie ostatniego rzedu na dole
        rectMode(CORNER);
        rect(0, j+7.5, 15, 3); //pierwszy i ostatni prostokąt dodane "ręcznie"
        rect(sizeX-15, j+7.5, 15, 3);
        rectMode(CENTER);   

        if (i<sizeX-30) { //usuniecie ostatniego prostokata pod koniec
          rect(i+25, j+10, 30, 3);
        }
      }
    }
  }
  rect(0, 0, sizeX*2, sizeY*2);

  if (record == true) {
    endRecord();
    print("eksport ok!");
    record=false;
  }
}

void keyPressed() {
  record = true;
}