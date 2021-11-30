float z = 0.0;
int d = 5;

void setup() {
  size(500, 500);
  background(255);
  noiseDetail(10);
}

void draw() {
  background(255);
  for (int x = d; x < 500; x = x + d)
  {
    for (int y = d; y < 500; y = y + d)
    {
      float kat = noise(x*0.005, y*0.005, z)*2*PI;
      float vx = cos(kat)*d;
      float vy = sin(kat)*d;
      line(x, y, x+vx, y+vy);
    }
  }
  z = z + 0.005;
  println(frameRate);
}
