import hpglgraphics.*;
HPGLGraphics canvas; //deklaracja HPGLGraphics

int divX = 22;
int divY = 32;

float attX = 552; //lokalizacja atraktora kontrolujacego wielkosc na poczatku (w kierunku X)
float attY = 386; //i w kierunku Y

boolean record = false; //boolean posluzy do uruchamiania eksportu

void setup() {
  size(1104, 772);
  
  //deklarujemy canvas zeby moc posluzyc sie eksportem 
  canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");
}

void draw() {
  background(255);
  noFill();
  rectMode(CENTER);

  if (record == true) {
    beginRecord(canvas);
  }

  for (int i=1; i<divX; i++) { //piony    
    int locY = height/divX * i; //alternatywnie może być while - robimy z tego osobny przyklad while i<height i+=divX
    for (int j=1; j<divY; j++) { //poziomy
      int locX = width/divY * j;
      //print(locX + " ");

      float locDist = dist(locX, locY, attX, attY);
      float outDist = map(locDist, 0, width, 5, 30);
      //print(outDist + " ");

      //WERSJA 2 - obrocone kwadraty
      beginShape();
      vertex(locX - outDist, locY);
      vertex(locX, locY - outDist);
      vertex(locX + outDist, locY);
      vertex(locX, locY + outDist);
      endShape(CLOSE);
     
    }

    if (record == true) {
      endRecord();
      print("eksport ok!");
      record=false;
    }
  }
}

void mousePressed() {
  attX = mouseX;
  attY = mouseY;
  println(mouseX + " " + mouseY);
}

void keyPressed() {
  record = true;
}