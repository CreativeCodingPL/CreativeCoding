let numPoints = 20;
let px = new Array(numPoints);
let py = new Array(numPoints);

function setup() {
  createCanvas(500, 500);
  background("#333");
  stroke(255, 255, 255, 5);
  strokeWeight(20);

  for ( let i = 0; i < numPoints; i++ ) {
    px[i] = width/2;
    py[i] = height/2;
  }
}

function draw() {
  for ( let i = 0; i < numPoints; i++ ) {
    point( px[i], py[i] );
    px[i] = px[i] + random(-5, 5);
    py[i] = py[i] + random(-5, 5);
  } 
}