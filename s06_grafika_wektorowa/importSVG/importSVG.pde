PShape shape;

void setup(){
  size(800, 800);
  shape = loadShape("hello.svg");
  shape.disableStyle();
  shapeMode(CENTER);
}

void draw() {
  //background(128);
  fill(0);
  stroke(255);
  float s = 8 * (
      sin(frameCount/100.0)+ 1.0
      )/2.0;
      strokeWeight(2);
  shape(shape, 
    mouseX, mouseY,
    shape.width*s, shape.height*s
    );
  
  
}
