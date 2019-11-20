ArrayList<PVector> particles;

void setup() {
  size(800, 800);
  particles = new ArrayList<PVector>();
}

void draw() {
  background(#FFAA00);
  noStroke();
  for (int i=0; i < particles.size(); i++) {
    PVector p = particles.get(i);
    p.x+=random(-2, 2);
    p.y+=random(-2, 2);
    ellipse(p.x, p.y, p.z, p.z);
  }
}
void mousePressed() {
  float d = random(5, 50);
  PVector p = new PVector(mouseX, mouseY, d);
  particles.add(p);
  println("Dodalem kolko o srednicy: "+ d);
  println("Lista ma dlugosc: " + particles.size());
}
void keyPressed() {
  if (particles.size()>0) {
    //particles.remove(particles.size()-1);
    int index = randomIndex();
    println("Kasuje element o indeksie: " + index);
    particles.remove(index);
  }
  println("Lista ma dlugosc: " + particles.size());
}
int randomIndex () {
  return floor(random(particles.size()));
}
