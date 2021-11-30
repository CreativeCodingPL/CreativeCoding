float z = 0.0;

void setup() {
  size(500, 500);
  background(255);
  colorMode(HSB);
  noiseDetail(3);
}

void draw() {
  for (int x = 0; x < 500; x = x + 1)
  {
    for (int y = 0; y < 500; y = y + 1)
    {
      color c = color(noise(x*0.005, y*0.005, z)*255, 220, 255);
      set(x, y, c);
    }
  }
  z = z + 0.05;
  println(frameRate);
}
