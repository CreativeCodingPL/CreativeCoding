void setup() {
  size(500, 500);
}

void draw() {

  background(255/2);
  rect(150, 150, 200, 200);

  if ( mouseX > 150) {
    if (mouseX < 350) {
      ellipse(width/2, height/2, 100, 100);
    }
  }
  
  // && = AND 
  // || = OR 

  if ( (mouseY < 150) || (mouseY > 350) ) {
    rect(width/2 - 50, height/2 - 50, 100, 100);
  }
}
