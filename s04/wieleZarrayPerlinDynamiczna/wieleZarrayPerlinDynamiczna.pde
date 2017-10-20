float[] x = new float[500];
float[] y = new float[500];

void setup()
{
  size(500, 500);
  fill(0,200,10);
  int nr = 0;
  while(nr < x.length)
  {
      x[nr] = 250;
      y[nr] = 250;
      nr++;
  }
}

void draw()
{
  background(255);
  int nr = 0;
  while(nr < x.length)
  {
    x[nr] = x[nr] + random(-5,5); 
    y[nr] = y[nr] + random(-5,5); 
    ellipse(x[nr], y[nr], 10, 10);
    nr++; //to samo co nr = nr + 1;
  }
}