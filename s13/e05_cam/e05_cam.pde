import processing.video.*;

Capture cam;

void setup(){
 size(640, 480);
 
 String[] cameras = Capture.list();
 printArray(cameras); 
 cam = new Capture(this, cameras[0]);
 cam.start();
}

void draw(){
  background(255);
  noStroke();
  fill(0);
  if(cam.available()){
    cam.read();
  }
  //image(cam,0,0,width, height);
  for(float x = 0; x<width; x+=10){
    for(float y = 0; y<height; y+=10){
      color c = cam.get(floor(x),floor(y));
      float brightness = 255 - brightness(c);
      ellipse(x, y, brightness/20, brightness/20);
    }
  }
}
