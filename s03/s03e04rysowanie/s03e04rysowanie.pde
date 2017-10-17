float gruboscObrysu = 10;

void setup()
{
  size(500, 600);
}

void draw()
{
  stroke(0);
  if(keyPressed){
    stroke(random(100,255),random(255),random(255));
  }
  
  
  if(mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
  if(keyPressed && (key == 'b' || key == 'B') ){
    background(255);
  }
  
  if(keyPressed && (key == 's' || key == 'S') ){
    saveFrame();
  }
  
  if(keyPressed && key == '='){
    gruboscObrysu = gruboscObrysu + 1;
  }
  
  if(keyPressed && key == '-' && gruboscObrysu > 1){
    gruboscObrysu-=1;
  }
  strokeWeight(gruboscObrysu);
  
}