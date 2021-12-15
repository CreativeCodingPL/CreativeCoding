void setup()
{
  size(700, 700);
  background(255);
  stroke(0, 20);
  
}

void draw()
{
  //fill(255, 30);
  //rect(0,0,width,height);
  drzewo(width*0.5, height, 200, 91.5);
  drzewo(width*0.8, height, 100, 91.5);
}

void drzewo(float x, float y, float wysokosc, float kat)
{
  if (wysokosc > 5)
  { //lodyga/galazka
    float yk = y - wysokosc * sin(radians(kat));
    float xk = x + wysokosc * cos(radians(kat));
    strokeWeight(wysokosc*0.05);
    line(x, y, xk, yk);
    drzewo(xk, yk, wysokosc*0.66, kat + 60 + 20*noise(x,y,frameCount*0.001));
    drzewo(xk, yk, wysokosc*0.66, kat - 20 - 20*noise(x,y,frameCount*0.001));
  }
  else
  { //lisc
    ellipse(x, y, 5, 5);
  }
}
