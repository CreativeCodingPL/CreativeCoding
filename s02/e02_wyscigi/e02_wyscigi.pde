void setup(){
  size(500, 500);
  background(255);
  strokeWeight(30);
//  frameRate(100);
}

void draw(){  
  background(255);
  strokeWeight(30+frameCount*0.1);
  stroke(frameCount*0.5);
  point(frameCount*1.2, 150);
  point(frameCount, 250);
  point(frameCount*0.9, 350);
  point(mouseX, 450);
  point(mouseY, 50);
  strokeWeight(5);
  stroke(0);
  line(450, 0, 450, 500);
  line(frameCount*1.2, 150, frameCount, 250);
  line(frameCount*0.9, 350, frameCount, 250);
}
