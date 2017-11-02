int k = 5; //ile kolumn
int w = 3; //ile wierszy
Zegar[] zegary = new Zegar[k*w];

void setup() {
  size(700, 700);
  for (int x=0; x < k; x++)
    for (int y=0; y < w; y++) {
      zegary[x*w+y] = new Zegar(width/k+x*width/(k+1), height/w+y*height/(w+1), width/(2*k), random(0.01, 0.05));
    }
}

void draw() {
  fill(255, 50);
  noStroke();
  rect(0, 0, width, height);
  for (Zegar z : zegary) {
    z.draw();
    z.update();
  }
}