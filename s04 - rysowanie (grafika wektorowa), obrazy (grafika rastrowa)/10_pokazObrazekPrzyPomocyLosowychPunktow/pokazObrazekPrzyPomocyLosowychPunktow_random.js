let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(500, 500);
  strokeWeight(20);
}

function draw() {
  x = random(width);  // wylosuj pozycje X, od 0 do width (500)
  y = random(height); // wylosuj pozycje X, od 0 do height (500)
  
  c = img.get(x, y); // pobierz kolor wybranego piksela (x, y)
  
  stroke(c);
  point(x, y);
}

function mousePressed() {
  saveCanvas();
}