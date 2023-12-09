let numPoints = 50;

let px = new Array(numPoints);
let py = new Array(numPoints);
let tc = new Array(numPoints);

function setup() {
  createCanvas(500, 500);  
  strokeWeight(10);
  colorMode(HSB);

  for ( let i = 0; i < numPoints; i++ ) {
    px[i] = 250;
    py[i] = 250;
    tc[i] = color(random(180, 240), 100, 100);
  }
}

function draw() {

  noStroke();
  fill(0, 0, 0, 0.05);
  rect(0, 0, width, height);

  for ( let i = 0; i < numPoints; i++ ) {
    point( px[i], py[i] );
    stroke( tc[i] );
    px[i] = px[i] + random(-5, 5);
    py[i] = py[i] + random(-5, 5);
  } 
}