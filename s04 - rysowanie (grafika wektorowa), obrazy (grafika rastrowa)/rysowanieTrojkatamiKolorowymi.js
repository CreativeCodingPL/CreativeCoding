function setup() {
  createCanvas (500, 500);
  colorMode(HSB);
}

function draw() {
  
  for ( i = 0; i < 5; i = i + 1) {
    
    fill( random(360), 100, 100 );
    
    offsetX = random (-30, 30);
    offsetY = random (-30, 30);
    
    p1x = mouseX + offsetX;
    p1y = mouseY + offsetY;

    p2x = p1x + 10;
    p2y = p1y;

    p3x = p1x + 5
    p3y = p1y - 8;
    
    triangle (p1x, p1y, p2x, p2y, p3x, p3y);
  }
  
}

function mousePressed() {
  saveCanvas();
}