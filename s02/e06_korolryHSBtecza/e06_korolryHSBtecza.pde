void setup(){
  size(500, 500);
  background(255);
  strokeWeight(10);
  colorMode(HSB, 500); //tryb hue sat bri, i skala 0-500
}

void draw(){  
  stroke(frameCount*10, 400, 500);
  line(-5+frameCount*10, 0, -5+frameCount*10, 500);
}

void keyPressed() {
  saveFrame();
}
