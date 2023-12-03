function setup() {
  createCanvas (500, 500);
  fill ("#2196F3");  
}

function draw() {
  
  for ( i = 0; i < 5; i = i + 1) {
    
    px = mouseX + random (-20, 20);
    py = mouseY + random (-20, 20);
    
    s = random (3, 10); // rozmiar
    
    ellipse (px, py, s, s);
  }
  
}

function mousePressed() {
  saveCanvas();
}