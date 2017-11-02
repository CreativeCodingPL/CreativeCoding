Car[] cars = new Car[100]; 
PShape cc;
void setup() {
  size(500, 500);
  for (int i=0; i<cars.length; i++) {
    cars[i] = new Car(random(500), random(500));
  }
}

void draw() {
  background(255);
  for (Car c : cars) {
    c.update();
    c.draw();
  }
}