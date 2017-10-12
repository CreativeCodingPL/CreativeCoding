
boolean czyCzerwony = false;

void setup() {
  size(600, 600);
}
void draw() {

  fill(255);
  println(mouseX);
  if (czyCzerwony)
  {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }

  rect(200, 200, 200, 200);
}
void keyPressed() {
  czyCzerwony = !czyCzerwony;
}