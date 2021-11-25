void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0, 30);
  background(255);
  //colorMode(RGB);
}

void draw()
{
    //background(255);
  stroke(255*noise(10000+frameCount*0.001), 255*noise(30000+frameCount*0.01), 255*noise(50000+frameCount*0.05), 255);
  line(width*noise(1000+frameCount*0.01), height*noise(frameCount*0.01), width/2, height/2);
}
