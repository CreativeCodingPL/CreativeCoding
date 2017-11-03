class Car {
  PShape carShape;
  float speed = random(1.3, 3);
  float scale = 0.05;
  PVector direction = PVector.fromAngle(random(-PI/2, PI/2));
  PVector position;
  Car(float x, float y) {
    position = new PVector(x, y);
    direction.mult(speed);
    carShape = loadShape("car.svg");
    carShape.rotate(direction.heading());
  }
  void draw() {
    shape(carShape, position.x, position.y, carShape.width*scale, carShape.height*scale);
  }
  void update() {
    position.add(direction);
    //direction.rotate(0.01);
    //direction.mult(1.03);
  }
  void turn(float angle) {
    direction.rotate(angle);
    carShape.resetMatrix();
    carShape.rotate(direction.heading());
  }
}