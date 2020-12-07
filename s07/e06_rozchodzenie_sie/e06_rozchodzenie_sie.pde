Particle[] czastki = new Particle[20];

void setup() {
  size(500, 500);
  background(72, 0, 96);
  smooth();
  noStroke();

  for ( int i = 0; i < czastki.length; i++) {
    czastki[i] = new Particle(width/2 + random(-5, 5), height/2 + random(-5, 5));
  }
}

void draw() {
  fill(72, 0, 96, 20);
  rect(0, 0, width, height);
  for ( int i = 0; i < czastki.length; i++) {
    czastki[i].update();
  }
}

void keyPressed() {
  if (key == 's') saveFrame("particles.png"); 
}
