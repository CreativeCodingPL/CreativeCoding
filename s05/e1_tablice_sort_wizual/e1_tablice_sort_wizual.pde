float[] t; //<>// //<>//
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
  //for (int n ... nie potrzebne bo przecież draw tez zapetla
  //for (int n = 0; n < t.length; n++) { 
  for (int i = 0; i < t.length - 1; i++) {
    if (t[i] > t[i+1]) {
      a = t[i];
      t[i] = t[i+1];
      t[i+1] = a;
    }
  }
  for (int i = 0; i < t.length; i++) {
    line(0, i, t[i], i);
  }
  
}
