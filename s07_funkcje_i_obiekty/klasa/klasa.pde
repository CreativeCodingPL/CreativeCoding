Bakteria andrzej;
Bakteria janusz;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  andrzej = new Bakteria(100, 200, 30, color(200, 0, 100));
  janusz = new Bakteria();
}

void draw() {
  //background(255);
  //andrzej.x = andrzej.x + random(-1,1);
  //andrzej.y = andrzej.y + random(-1,1);
  andrzej.move();
  janusz.move();
  andrzej.display();
  janusz.display();
}
