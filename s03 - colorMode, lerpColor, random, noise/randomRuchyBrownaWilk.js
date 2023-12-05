// Symulacja przedstawiająca dane zebrane z takich urządzeń GPS umieszczonych na grzbiecie wilka

function setup() {
  createCanvas(500, 500);
  
  // startujemy od środka ekranu
  x = width * 0.4;
  y = height * 0.6;
  
  colorMode(HSB);
  background(255); 
  strokeWeight(1);
}

function draw() {
  
  c = map(y, 0, height, 0, 360 );
  stroke(c, 100, 100);
  
  currentX = x;
  currentY = y;
  
  x = x + random(10) - random(10); // zmień aktualną pozycję X
  y = y + random(10) - random(10); // zmień aktualną pozycję Y
  
  newX = x;
  newY = y;
  
  line(currentX, currentY, newX, newY);
}

function mousePressed() {
  saveCanvas();
}