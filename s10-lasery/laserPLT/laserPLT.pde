import hpglgraphics.*;

void setup() {
  size(1104, 772);

  stroke(0);
  background(255);
  noFill();

  // HPGL (Roland DXY-1350A) coordinate ranges:
  // A4 : 11040 x 7721 (297 x 210 mm)
  // A3 : 16158 x 11040 (420 x 297 mm)

  HPGLGraphics canvas = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  canvas.setPaperSize("A4");
  canvas.setPath("output.plt");

  //to tylko zeby miec obszar odniesienia do rysowania
  float sizeX = mmToHPGL(33);
  float sizeY = mmToHPGL(33);
  rect(0, 0, sizeX, sizeY);

  beginRecord(canvas);
  
   //tu rysujemy co ma byc wyciete w tym obszarze 
 
  endRecord();
}


//to napisal dla was Wieslaw zeby bylo latwiej
//zamienia milimetry na jednostki lasera
float mmToHPGL(float mm) {
  float cale = (mm * 0.1) / 2.54;
  float hpgl = 1016 * cale * 0.1;
  //i jeszcze skala ekranu w tej bibliotece czyli wszysko 10 razy mniejsze
  //czyli 11040 punkty to faktycznie 1104
  return hpgl;
}

// i odwrotnie HPGL point to mm ::
// rect(0, 0, 200, 200); //realnie to jest 50.0065 mm x 50.0065 mm
// 200 to naprawde 2000 i skala 1016 dla HPGL to jeden cal czyli w mm = 2.54 * 2000/1016
// czyli 40 to jest doklanie 10mm czyli 1cm :)