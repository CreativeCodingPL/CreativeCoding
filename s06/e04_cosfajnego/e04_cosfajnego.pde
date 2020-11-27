import processing.pdf.*;

int ilosc = 500;
PVector punkty[] = new PVector[ilosc];
PVector predkosci[] = new PVector[ilosc];
float promienie[] = new float[ilosc];

boolean nagrywam = false;

void setup()
{
  size(800, 600, P2D);
  for (int i=0; i<ilosc; i++) {
    punkty[i] = new PVector(random(width), random(height));
    predkosci[i] = new PVector(random(-2, 2), random(-2, 2));
    promienie[i] = random(5, 50);
  }
}

void draw() {
  background(255);
  noFill();
  //stroke(0,30);
  if (nagrywam)
  {
    beginRecord(PDF, "output/" + year() + month() + day() +
      hour() + minute() +"-####.pdf");
  }

  for (int i=0; i<ilosc; i++)
  {
    //ellipse(punkty[i].x, punkty[i].y, promienie[i]*2,promienie[i]*2);
    for (int j=i; j<ilosc; j++) {
      float odleglosc = dist(punkty[i].x, punkty[i].y, punkty[j].x, punkty[j].y);
      if (odleglosc < promienie[i]+promienie[j])
      {
        strokeWeight(map(odleglosc, 0, 100, 2, 0.1));
        stroke(
          map(odleglosc, 0, 40, 255, 0),
          0,
          0,
          50
          );
        line(punkty[i].x, punkty[i].y, punkty[j].x, punkty[j].y);
      }
    }

    punkty[i].x+=predkosci[i].x;
    punkty[i].y+=predkosci[i].y;

    if (punkty[i].x>=width || punkty[i].x<=0)
    {
      predkosci[i].x=-predkosci[i].x;
    }
    if (punkty[i].y>=height || punkty[i].y<=0)
    {
      predkosci[i].y=-predkosci[i].y;
    }
  }


  if (nagrywam)
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
