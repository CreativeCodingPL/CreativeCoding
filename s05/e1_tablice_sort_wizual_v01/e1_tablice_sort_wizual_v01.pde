float[] t; //<>//
float a;

void setup() {
  size(700, 500);
  stroke(0);
  fill(0);
  strokeWeight(0.7);

  t = new float[height];

  for (int i = 0; i < t.length; i++) {
    t[i] = random(width);
  }
}

void draw() {
  background(255);
  text(frameCount, width - 50, 20);
  for (int n = 0; n < t.length; n++) { 
    int i1 = round(random(height-1));
    int i2 = round(random(height-1));
    if (t[i1] > t[i2] && i1<i2) {
      a = t[i1];
      t[i1] = t[i2];
      t[i2] = a;
    }
  }
  for (int i = 0; i < t.length; i++) {
    line(0, i, t[i], i);
  }
}
