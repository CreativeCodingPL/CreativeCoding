void setup() {
  size(500, 500);
  frameRate(60);
  background(0);
  noStroke();
  colorMode(HSB);
}

void draw() {
  //background(0);
  dywan(100, 100, 300);
}

void dywan(float x, float y, float rozmiar) {
  if (rozmiar > 3) { 
    rotate(random(-0.01, 0.01));
    fill(10+rozmiar/5,255,255,10);
    float r = rozmiar/random(2.9,3.1);
    rect(x+r, y+r, r, r);
    //pierwszy rzad
    dywan(x, y, r);
    dywan(x+r, y, r);
    dywan(x+2*r, y, r);
    //drugi rzad
    dywan(x, y+r, r);
    //dywan(x+r, y+r, r); //tego nie ma bo dywan ma wygryziony srodek
    dywan(x+2*r, y+r, r);
    //trzeci rzad
    dywan(x, y+2*r, r);
    dywan(x+r, y+2*r, r);
    dywan(x+2*r, y+2*r, r);
  }
}