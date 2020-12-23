import processing.sound.*;

AudioIn input;
Amplitude amp;

void setup() {
  size(800, 500);
  Sound.list();

  input = new AudioIn(this, 0);
  input.start();

  amp = new Amplitude(this);
  amp.input(input);
}

void draw() {
  background(255);
  float volume = amp.analyze();
  float wys = map(volume, 0, 0.5, height, 0);
  line(0, wys, width, wys);
}
