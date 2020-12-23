import processing.sound.*;
import peasy.PeasyCam;
PeasyCam cam;

AudioIn input;
FFT fft;

int bands = 128;

ArrayList<PVector> punkty;

void setup() {
  size(800, 800, P3D);
  Sound.list();
  cam = new PeasyCam(this, 400);
  cam.setWheelScale(0.01);
  input = new AudioIn(this, 0);
  input.start();

  punkty = new ArrayList<PVector>();
  for (int i=0; i<bands; i++) {
    float u = random(1);
    float v = random(1);
    float theta = 2 * PI * u;
    float phi = acos(2 * v - 1);
    float x = sin(phi) * cos(theta);
    float y = sin(phi) * sin(theta);
    float z = cos(phi);
    punkty.add(new PVector(x, y, z));
  }

  fft = new FFT(this, bands);
  fft.input(input);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  fft.analyze();
  for (int i=0; i<42; i++) {
    PVector p = punkty.get(i);

    float R1 = 100;
    float R2 = 110+fft.spectrum[i]*500;
    line(p.x*R1, p.y*R1, p.z*R1, p.x*R2, p.y*R2, p.z*R2);
  }
}
