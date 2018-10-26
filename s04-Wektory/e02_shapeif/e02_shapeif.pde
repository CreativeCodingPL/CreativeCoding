void setup() {
  size(500, 500);
}

void draw() {
  //background(200);
  //rect(10, 10, 480,480);
  fill(255,0,0);
  if(random(100)>10)
  {
     fill(255); 
  }
  else {
    fill(0); 
  }
  if(mousePressed)
  {
    beginShape();
    vertex(mouseX+30, mouseY+30);
    vertex(mouseX+10, mouseY+30);
    vertex(mouseX, mouseY);
    endShape(CLOSE);
  }
}
void keyPressed()
{
  if(key == ' ') { saveFrame(); }
  
  if(key == 'k')
  {
    stroke(random(255),random(255), random(255));
  }
  
}
