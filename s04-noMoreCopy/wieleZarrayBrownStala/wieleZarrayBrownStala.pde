void setup()
{
  size(500, 500);
  fill(0,200,10);
  frameRate(5);
}
float[] x = {250, 250, 250, 250, 250, 250, 250, 250};
float[] y = {250, 250, 250, 250, 250, 250, 250, 250};

void draw()
{
  background(255);
  int nr = 0;
  while(nr < x.length)
  {
    x[nr] = x[nr] + random(-5,5); 
    y[nr] = y[nr] + random(-5,5); 
    ellipse(x[nr], y[nr], 50, 50);
    nr++; //to samo co nr = nr + 1;
  }
}