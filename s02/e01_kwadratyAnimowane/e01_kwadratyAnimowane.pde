void setup(){
  size(500, 500);
  background(255);
  frameRate(24);
}

void draw(){  
  background(255);
  rect(100, 100, frameCount, 300);
  rect(100+frameCount, 400, frameCount*0.5, 50);
}
