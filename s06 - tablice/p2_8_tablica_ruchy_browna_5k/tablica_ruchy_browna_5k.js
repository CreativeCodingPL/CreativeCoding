let numPoints = 5000;

let px = new Array(numPoints);
let py = new Array(numPoints);

function setup() {
  createCanvas(500, 500);  
  strokeWeight(2);

  for ( let i = 0; i < numPoints; i++ ) {
    px[i] = 250;
    py[i] = 250;
  }
}

function draw() {

  noStroke();
  fill(0, 0, 0, 5);
  rect(0, 0, width, height);

  stroke(255);
  for ( let i = 0; i < numPoints; i++ ) {
    point( px[i], py[i] );
    px[i] = px[i] + random(-5, 5);
    py[i] = py[i] + random(-5, 5);
  } 
}