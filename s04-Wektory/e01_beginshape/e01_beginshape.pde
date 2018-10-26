void setup() {
  size(500, 500);
}

void draw() {
  //background(200);
  //rect(10, 10, 480,480);
  if(mousePressed)
  {
    beginShape();
    vertex(mouseX+30, mouseY+30);
    vertex(mouseX+10, mouseY+30);
    vertex(mouseX, mouseY);
    endShape(CLOSE);
  }
}
void keyPressed(){
  saveFrame();  
}
