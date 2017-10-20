float[] x = new float[500];
float[] y = new float[500];

void setup()
{
  size(500, 500);
  fill(0,200,10);
  colorMode(HSB);
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
  fill(255, 10);
  noStroke();
  rect(0, 0, width, height);
  int nr = 0;
  while(nr < x.length)
  {
    x[nr] = x[nr] + random(-5,5); 
    y[nr] = y[nr] + random(-5,5); 
    fill(dist(250, 250, x[nr], y[nr]),200,255);
    ellipse(x[nr], y[nr], 10, 10);
    nr++; //to samo co nr = nr + 1;
  }
}