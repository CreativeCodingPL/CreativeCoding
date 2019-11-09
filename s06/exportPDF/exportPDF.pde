import processing.pdf.*;

PShape shape;

void setup() {
  size(800, 800);
  shape = loadShape("hello.svg");
  
  
  beginRecord(PDF, "wow.pdf");
  shape.disableStyle();
  shapeMode(CENTER);
}

void draw() {
  //background(128);
  
  stroke(255);
  
  //float s = 0.5 + (sin(frameCount/10.0)+ 1.0)/2.0;
  float s = map(sin(frameCount/10.0), -1, 1, 0.5, 1.5);
  
  
  fill(0);
  strokeWeight(2);
  if(mousePressed == true) {
  shape(shape, 
    mouseX, mouseY, 
    shape.width*s, shape.height*s
    );
  }
}

void keyPressed() {
  endRecord();
  exit();
}
