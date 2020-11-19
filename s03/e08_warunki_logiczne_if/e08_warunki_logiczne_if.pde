boolean czyPokazac;

void setup() {
  size(500, 500);
  noFill();
}

void draw() {

  background(255);
  line(width/2, 0, width/2, width); 
  
  if (czyPokazac) {
    ellipse(width/2, height/2, 100, 100);
  }
  
  if (!czyPokazac) {
    rect(width/2 - 50, height/2 - 50, 100, 100);
  }
}

void keyPressed() {
  czyPokazac = !czyPokazac;
}
