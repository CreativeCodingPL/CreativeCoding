color kolor1 = #4D4BDB;
color kolor2 = #F7A857;

void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0, 30);
  background(255);
}

void draw()
{
  stroke(lerpColor(kolor1, kolor2, noise(frameCount*0.01)));
  line(width*noise(1000+frameCount*0.01), height*noise(frameCount*0.01), mouseX, mouseY);
}
