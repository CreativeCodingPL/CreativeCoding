class Particle extends PVector {

  float minX = -Float.MAX_VALUE;
  float maxX = Float.MAX_VALUE;
  float minY = -Float.MAX_VALUE;
  float maxY = Float.MAX_VALUE;

  PVector velocity = new PVector();
  float maxVelocity = 10;

  float speed = 0.5;

  // radius of impact
  float radius = 200;

  void update() {

    velocity.limit(maxVelocity);

    x += velocity.x;
    y += velocity.y;

    if (x < minX) {
      x = minX - (x - minX);
      velocity.x = -velocity.x;
    }
    if (x > maxX) {
      x = maxX - (x - maxX);
      velocity.x = -velocity.x;
    }

    if (y < minY) {
      y = minY - (y - minY);
      velocity.y = -velocity.y;
    }
    if (y > maxY) {
      y = maxY - (y - maxY);
      velocity.y = -velocity.y;
    }
    velocity.mult(1 - speed);

    fill(255);
    ellipse(x, y, 10, 10);
  }

  Particle() {
  }

  Particle(float theX, float theY) {
    x = theX;
    y = theY;
  }

  void attract(Particle[] theParticles) {

    for (int i = 0; i < theParticles.length; i++) {
      Particle otherParticle = theParticles[i];

      if (otherParticle == null) break;

      if (otherParticle == this) continue;

      this.attract(otherParticle);
    }
  }

  void attract(Particle theParticle) {
    float d = PVector.dist(this, theParticle);

    if (d > 0 && d < radius) {
      float s = pow(d / radius, 1 / 1.0);
      float f = s * -10 * (1 / (s + 1) + ((s - 3) / 4)) / d;
      PVector df = PVector.sub(this, theParticle);
      df.mult(f);

      theParticle.velocity.x += df.x;
      theParticle.velocity.y += df.y;
    }
  }

  void setBoundary(float theMinX, float theMinY, float theMaxX, float theMaxY) {
    this.minX = theMinX;
    this.maxX = theMaxX;
    this.minY = theMinY;
    this.maxY = theMaxY;
  }
}
