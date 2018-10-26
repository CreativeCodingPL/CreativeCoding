void setup() {
  size(500, 500);
}
void draw() {
  if (mouseX < 250) {
    if (mouseY < 250) {
      background(0, 255, 0);
    } else {
      background(255, 255, 0);
    }
  } else {
    if (mouseY < 250) {
      background(255, 0, 0);
    } else {
      background(0, 0, 255);
    }
  }
  line(250, 0, 250, height);
  line(0, 250, height, 250);
}

/*
x od 0 do 100 - zielony
 x od 101 do 200 - czerwony
 x od 201 do 400 - niebieski
 */
