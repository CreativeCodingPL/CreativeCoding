void setup(){
  size(500, 500);
  background(255);
  strokeWeight(30);
}

void draw(){  
  noStroke(); //bez obrysu
  fill(255, 30); //nie pelne pkrycie daje powidok
  rect(0,0, 500, 500); //czyli ten rect nie ma obrysu
  strokeWeight(30+frameCount*0.1);
  stroke(0);
  line(frameCount*3.0, 50, frameCount*4.0, 450);
  line(600-frameCount*4.0, 50, 600-frameCount*6.0, 450);
}
