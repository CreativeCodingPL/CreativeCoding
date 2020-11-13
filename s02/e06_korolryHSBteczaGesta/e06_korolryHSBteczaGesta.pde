void setup(){
  size(500, 500);
  background(255);
  strokeWeight(1);
  colorMode(HSB, 500); //tryb hue sat bri, i skala 0-500
}

void draw(){  
  stroke(frameCount, 400, 500);
  line(frameCount, 0, frameCount, 500);
}

void keyPressed() {
  saveFrame();
}
