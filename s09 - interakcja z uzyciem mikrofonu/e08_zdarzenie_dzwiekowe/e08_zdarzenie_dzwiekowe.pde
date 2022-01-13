import processing.sound.*;

SoundFile file;

void setup() {
  file = new SoundFile(this, "knock.wav");
}

void draw() {
}

void keyPressed() {
  if (file.isPlaying() == false) {
    file.play();
  }
}
