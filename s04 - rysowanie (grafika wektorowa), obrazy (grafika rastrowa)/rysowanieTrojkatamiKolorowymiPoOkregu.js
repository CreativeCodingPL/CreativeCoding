function setup() {
  createCanvas (500, 500);
  colorMode(HSB);
  background(255);
}

function draw() {
  
  print(TWO_PI)
  
  if (mouseIsPressed) {
    
    numTriangles = 5;
    radius = 100;
    angleStep = TWO_PI / numTriangles;
    
    translate (mouseX, mouseY);
  
    for (i = 0; i < TWO_PI; i += angleStep) {
      
      c = map(i, 0, TWO_PI, 0, 360 );
      fill( c, 100, 100 );
      
      x = radius * cos(i);
      y = radius * sin(i);
      
      size = 20;
      
      triangle(x, y, x + size, y, x + size / 2, y - size);
    }
  }
  
}

function mousePressed() {
  saveCanvas();
}