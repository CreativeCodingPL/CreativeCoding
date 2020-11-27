import processing.pdf.*;

boolean nagrywam = false;

void setup(){
  size(400, 400);
}

void draw() {
  background(255);
  if(nagrywam)
  {
    beginRecord(PDF, "podkatalog/output" + year() + month() + day() +
    hour() + minute() +"-####.pdf");
  }

  for(int i=0;i<10;i=i+1)
  {
    float x = random(width);
    line(x, height, x, 0);
  }
  if(nagrywam)
  {
    endRecord();
    nagrywam = false;
  }
  //println(nagrywam);
}

void mousePressed()
{
  nagrywam = !nagrywam;
}
