float z = 0.0;

void setup() {
  size(500, 500);
  background(255);
  noiseDetail(10);
}

void draw() {
  background(255);
  for (int x = 20; x < 500; x = x + 20)
  {
    for (int y = 20; y < 500; y = y + 20)
    {
      float kat = noise(x*0.005, y*0.005, z)*2*PI;
      float vx = cos(kat)*20;
      float vy = sin(kat)*20;
      line(x, y, x+vx, y+vy);
    }
  }
  z = z + 0.005;
  println(frameRate);
}
