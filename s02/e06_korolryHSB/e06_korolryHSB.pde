void setup(){
  size(500, 500);
  background(255);
  strokeWeight(10);
}

void draw(){  
  stroke(255-frameCount*15, frameCount*7, frameCount*11);
  line(-5+frameCount*10, 0, -5+frameCount*10, 500);
}

void keyPressed() {
  saveFrame();
}
