void setup() {
  size(800, 800);
}

void draw() {
  //pętla ze zmienną x od 0 do width co 1
  for (int x=0; x<width; x=x+1)
  {
    for (int y=0; y<height; y=y+1)
    {
      stroke(x,y,255);
      point(x, y);
    }
  }
}