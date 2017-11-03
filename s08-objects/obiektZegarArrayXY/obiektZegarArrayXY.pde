int k = 17; //ile kolumn
int w = 17; //ile wierszy
Zegar[] zegary = new Zegar[k*w];

void setup() {
  size(800, 800);
  for (int x=0; x < k; x++)
    for (int y=0; y < w; y++) {
      zegary[x*w+y] = new Zegar(width/k+x*width/(k+1), height/w+y*height/(w+1), width/(2.5*k), random(0.01, 0.05));
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