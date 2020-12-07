Particle[] czastki = new Particle[20];

void setup() {
  size(500, 500);
  background(0);
  fill(255);

  for ( int i = 0; i < czastki.length; i++) {
    czastki[i] = new Particle();
    czastki[i].speed = random(0.1, 2);
    czastki[i].x = 20;
    czastki[i].y = 20 + (20 * i);
  }
}

void draw() {

  for ( int i = 0; i < czastki.length; i++) {
    ellipse(
      czastki[i].x, 
      czastki[i].y, 
      10, 
      10
    );
    
    //czastki[i].x = czastki[i].x + czastki[i].speed;
    czastki[i].x += czastki[i].speed;
  }
  
}
