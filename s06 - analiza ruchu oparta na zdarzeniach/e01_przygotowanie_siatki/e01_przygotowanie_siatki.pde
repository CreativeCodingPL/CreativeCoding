void setup() {
  size(640, 640);
  background(255);
  frameRate(30);
}

int pozycjaOdGory = 0;

void draw() {
  fill(255, 0, 0, 2);
  rect(0, pozycjaOdGory, 640, 200);
  pozycjaOdGory = pozycjaOdGory + 5;
  print("frame=");
  println(frameCount);
}
