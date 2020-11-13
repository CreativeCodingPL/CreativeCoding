void setup(){
  size(500, 500);
  background(255);
  strokeWeight(30);
}

void draw(){  
  strokeWeight(30+frameCount*0.1);
//  stroke(255-frameCount*0.5, 10);
  stroke(0, 10);
  line(frameCount*0.95, 50, frameCount, 250);
  line(frameCount*1.9, 150, frameCount, 250);
  line(frameCount*0.8, 350, frameCount, 250);
  line(frameCount*3.1, 450, 250, 250);
}
