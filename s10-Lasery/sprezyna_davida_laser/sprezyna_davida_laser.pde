import hpglgraphics.*;

int maxi = 50;
int odly = 0;
float p = 0.6;
float q = 2.5;
int brzeg = 400;

void setup() {
  size(1104, 772); 

  stroke(1);
  background(255);
  noFill();

  HPGLGraphics laser = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL);
  laser.setPaperSize("A4");
  laser.setPath("sprezyna.plt");

  beginRecord(laser);

  odly = brzeg/maxi;
  rect(0, 0, 400, 400);


  for (int i = 0; i < maxi; i++) {
    line(sin( PI*i/maxi*p)*brzeg/q, i*odly+odly/2, 0, i*odly+odly/2); //lewy
    line(brzeg + sin( PI + PI*i/maxi*p)*brzeg/q, i*odly+odly/2, brzeg, i*odly+odly/2); //prawy
    line(sin( PI*i/maxi*p)*brzeg/q, i*odly+odly/2, 0, i*odly+odly/2); //lewy
    line(brzeg + sin( PI + PI*i/maxi*p)*brzeg/q, i*odly+odly/2, brzeg, i*odly+odly/2); //prawy
  }

  for (int i = 0; i < maxi/2; i++) {   
    line(brzeg/2 + sin( PI*i/maxi*p)*brzeg/q, brzeg/2 + i*odly, brzeg/2, brzeg/2 + i*odly); //lewy dolny
    line(brzeg/2 + sin( PI + PI*i/maxi*p)*brzeg/q, brzeg/2 + i*odly, brzeg/2, brzeg/2 + i*odly); //prawy dolny

    line(brzeg/2 + sin( PI*i/maxi*p)*brzeg/q, brzeg/2 - i*odly, brzeg/2, brzeg/2 - i*odly); //lewy górny
    line(brzeg/2 + sin( PI + PI*i/maxi*p)*brzeg/q, brzeg/2 - i*odly, brzeg/2, brzeg/2 - i*odly); //prawy górny
  }

  endRecord();
}
