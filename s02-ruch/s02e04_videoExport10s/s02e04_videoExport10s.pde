void setup(){
  size(600,600);
}
void draw()
{
  ellipse(random(600), random(600), 2, 2);
  if(frameCount<300){
    saveFrame("####.jpg");
  }
}