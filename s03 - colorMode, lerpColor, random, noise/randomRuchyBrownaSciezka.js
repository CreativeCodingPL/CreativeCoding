// Ruchy Browna, czyli nieuporządkowane (chaotyczne) ruchy cząsteczek

function setup() {
  createCanvas(500, 500);
  
  // startujemy od środka ekranu
  x = width/2;
  y = height/2;
  
  colorMode(HSB);
  background(255);
  strokeWeight(40);
}

function draw() {
  
  stroke( random(100), 100, 100, 0.5);
  
  point(x, y);
  
  x = x + random(20) - random(20); // zmień aktualną pozycję X
  y = y + random(20) - random(20); // zmień aktualną pozycję Y
}