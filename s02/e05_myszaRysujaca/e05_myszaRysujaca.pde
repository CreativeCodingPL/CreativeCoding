void setup(){
  size(500, 500);
  background(255);
  strokeWeight(30);
  stroke(0, 5);
}

void draw(){  
  line(mouseY, 0, mouseX, 500);
  line(0, mouseX, 500, mouseY);
}

void keyPressed() {
  saveFrame();
}
