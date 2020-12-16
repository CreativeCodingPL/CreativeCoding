ArrayList<PVector> dziury;

void setup() {
  size(800, 800);
  dziury = new ArrayList<PVector>();
}


void draw() {
  background(#FFAA00);
  noStroke();
  fill(255);
  for (int i=0; i<dziury.size(); i++) {
    PVector dziura = dziury.get(i);
    dziura.x+=random(-2, 2);
    dziura.y+=random(-2, 2);
    ellipse(dziura.x, dziura.y, dziura.z, dziura.z);
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    float d = random(5, 50);
    PVector p = new PVector(mouseX, mouseY, d);
    dziury.add(p);
    println(dziury.size());
  } else {
    //int index = 0;
    //int index = dziury.size()-1;
    int index = floor(random(dziury.size()));
    if (dziury.size()>0) {
      dziury.remove(index);
    }
  }
}
