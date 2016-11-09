import processing.pdf.*;

void setup()
{
  size(400, 600);
  beginRecord(PDF, "poster.pdf");
  //pamietac by wszsykie ustawienia byly po beginRecord
  background(255);
  strokeWeight(15);
  stroke(0,20);
}

void draw()
{
  line(mouseY, 0, mouseX, height);
}

void keyPressed()
{
  endRecord(); 
  background(255);
}