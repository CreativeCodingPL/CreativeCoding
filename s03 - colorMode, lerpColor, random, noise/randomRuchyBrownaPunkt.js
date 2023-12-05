// Ruchy Browna, czyli nieuporządkowane (chaotyczne) ruchy cząsteczek

function setup() {
  createCanvas(500, 500);
  
  // startujemy od środka ekranu
  x = width/2;
  y = height/2;
}

function draw() {
  
  background(255);  
  
  strokeWeight(10);
  
  point(x, y);
  
  x = x + random(5) - random(5); // zmień aktualną pozycję X
  y = y + random(5) - random(5); // zmień aktualną pozycję Y
}