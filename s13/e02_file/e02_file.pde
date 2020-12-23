import processing.sound.*;

Amplitude amp;
SoundFile file;

float pVolume = 0;

void setup() {
  size(800, 500);

  file = new SoundFile(this, "sample.mp3");
  file.play();

  amp = new Amplitude(this);
  amp.input(file);

  background(255);
}

void draw() {
  float volume = amp.analyze();
  line(
    (frameCount%width)-1, 
    height-pVolume*height, 
    frameCount%width, 
    height-volume*height
    );
  pVolume =volume;
}
