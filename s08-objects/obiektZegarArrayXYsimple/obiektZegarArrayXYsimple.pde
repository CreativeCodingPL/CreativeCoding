Zegar[] zegary = new Zegar[10*10];

void setup() {
  size(800, 800);
  for (int x=0; x < 10; x++)
    for (int y=0; y < 10; y++) {
      zegary[x*10+y] = new Zegar(60+x*width/(11), 60+y*height/(11), 30, random(0.01, 0.05));
    }
}

void draw() {
  fill(0, 30);
  noStroke();
  rect(0, 0, width, height);
  for (Zegar z : zegary) {
    z.draw();
    z.update();
  }
}