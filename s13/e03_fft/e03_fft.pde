import processing.sound.*;

AudioIn input;
FFT fft;

int bands = 128;

float R = 200;

void setup() {
  size(800, 800);
  Sound.list();

  input = new AudioIn(this, 0);
  input.start();

  fft = new FFT(this, bands);
  fft.input(input);
  
  background(255);
}

void draw() {
  background(255);
  fft.analyze();
  strokeWeight(3);
  float w = width/bands;
  for(int i=0;i<bands; i++){
    float angle = i * (TWO_PI)/float(bands);
    float x = width/2 + R * cos(angle); 
    float y = height/2 + R * sin(angle);
    
    float x1 = width/2 + (R+fft.spectrum[i]*400) * cos(angle);
    float y1 = height/2 + (R+fft.spectrum[i]*400) * sin(angle);
    line(x, y, x1, y1); 
  }
}
