function setup() {
  createCanvas (500, 500);
  fill ("#2196F3");  
}

function draw() {
  
  for ( i = 0; i < 5; i = i + 1) {
    
    p1x = mouseX + random (-20, 20);
    p1y = mouseY + random (-20, 20);

    p2x = mouseX + random (-20, 20);
    p2y = mouseY + random (-20, 20);

    p3x = mouseX + random (-20, 20);
    p3y = mouseY + random (-20, 20);
    
    triangle (p1x, p1y, p2x, p2y, p3x, p3y);

  }
}

function mousePressed() {
  saveCanvas();
}