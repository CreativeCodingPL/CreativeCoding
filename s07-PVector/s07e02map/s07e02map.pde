color[] kolory = { color(255, 0, 255), color(255, 255, 255) };

void setup() {
  size(800, 800);
}

void draw() {
  //pętla ze zmienną x od 0 do width co 1
  for (int x=0; x<width; x=x+1)
  {
    for (int y=0; y<height; y=y+1)
    {
      float r = map(x, 0, width, 0, 255);
      float g = map(y, 0, height, 0, 255);
      stroke(r,g,255);
      point(x, y);
    }
  }
}