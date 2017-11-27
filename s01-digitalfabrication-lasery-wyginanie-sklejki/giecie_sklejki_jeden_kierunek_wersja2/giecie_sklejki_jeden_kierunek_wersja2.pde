import hpglgraphics.*;
HPGLGraphics canvas; //deklaracja HPGLGraphics

int przerwaY = 15;
int przerwaX = 100;

int szerokosc = 500;

boolean record = false; //boolean posluzy do uruchamiania eksportu

void setup() {
  size(1104, 772);

  canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
}

void draw() {
  background(255);

  //przerwa X i Y dodane na koniec zeby dodac interakcje
  przerwaX = int(map(mouseX,0,width,25,200));
  przerwaY = int(map(mouseY,0,height,10,30));

  if (record == true) {
    beginRecord(canvas);
  }

  for (int i=0; i<height-przerwaY*2; i+=przerwaY*2) {
    rect(przerwaX, przerwaY+i, szerokosc-przerwaX, 5);
    rect(0, przerwaY*2+i, szerokosc-przerwaX, 5);
  }

  if (record == true) {
    endRecord();
    print("eksport ok!");
    record=false;
  }
}

void keyPressed() {
  record = true;
}