function setup() {
  
  createCanvas(500, 500);
    
  colorMode(HSB);
  
  background(255);
  
  t = 0;
}

function draw() {

  n = noise( t );
  
  stroke( 100 * n, 100, 100 );
  
  w = map(n, 0, 1, 0, width);
  
  rect( 0, t * 100, w, 1 );
  
  t = t + 0.01;
}