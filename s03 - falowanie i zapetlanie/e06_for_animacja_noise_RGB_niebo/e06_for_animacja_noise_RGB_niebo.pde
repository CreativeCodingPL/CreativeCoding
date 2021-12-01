float z = 0.0;

void setup() {
  size(500, 500);
  background(255);
  colorMode(RGB);
  noiseDetail(5);
}

void draw() {
  for (int x = 0; x < 500; x = x + 1)
  {
    for (int y = 0; y < 500; y = y + 1)
    {
      color c = color(noise(x*0.005, y*0.005, z)*400, 220, 255);
      set(x, y, c);
    }
  }
  z = z + 0.01;
  println(frameRate);
}
