let numPoints = 250;

let px = new Array(numPoints);
let py = new Array(numPoints);
let tc = new Array(numPoints);

function setup() {
  createCanvas(500, 500);
  stroke(255);
  colorMode(HSB);
  
  for (let i = 0; i < numPoints; i++) {
    px[i] = 250;
    py[i] = 250;
    tc[i] = color(random(0, 60), 100, 100);
  }
}

function draw() {
  noStroke();
  fill(0, 0, 16, 0.05);
  rect(0, 0, width, height);

  strokeWeight(5);

  for (let i = 0; i < numPoints; i++) {
    stroke(tc[i]);
    point(px[i], py[i]);
    px[i] = px[i] + random(-5, 5);
    py[i] = py[i] + random(-5, 5);
  }
}