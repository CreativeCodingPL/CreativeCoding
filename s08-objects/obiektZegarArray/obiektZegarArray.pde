Zegar stary;
Zegar nowy;

void setup() {
  size(500, 500);
  stary = new Zegar(400, 400, 50, 0.05);
  nowy = new Zegar(200, 200, 150, 0.04);
}


void draw() {
  background(255);
  stary.draw();
  stary.update();
  nowy.draw();
  nowy.update();
}