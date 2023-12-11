let numPoints = 50;

let px = new Array(numPoints);
let py = new Array(numPoints);
let tc = new Array(numPoints);

function setup() {
  createCanvas(500, 500);  
  strokeWeight(2);

  for ( let i = 0; i < numPoints; i++ ) {
    px[i] = 250;
    py[i] = 250;
    tc[i] = color(random(255), random(255), random(255));
  }
}

function draw() {

  noStroke();
  fill(0, 0, 0, 5);
  rect(0, 0, width, height);

  for ( let i = 0; i < numPoints; i++ ) {
    point( px[i], py[i] );
    stroke( tc[i] );
    px[i] = px[i] + random(-5, 5);
    py[i] = py[i] + random(-5, 5);
  } 
}
