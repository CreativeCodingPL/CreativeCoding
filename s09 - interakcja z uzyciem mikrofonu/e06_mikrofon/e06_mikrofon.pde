import processing.sound.*;

AudioIn input;
Amplitude loudness;

void setup() {
  size(300, 300);

  input = new AudioIn(this, 0);
  input.start();

  loudness = new Amplitude(this);
  loudness.input(input);
  input.amp(1.0);
}

void draw() {
  float volume = loudness.analyze();
  float size = map(volume, 0, 0.5, 1, 500);

  background(255);
  noStroke();
  fill(0, 50);
  ellipse(width/2, height/2, size, size);
}
