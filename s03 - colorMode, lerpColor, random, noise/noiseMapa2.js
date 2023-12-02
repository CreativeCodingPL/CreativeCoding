function setup() {
  
  createCanvas(500, 500);
    
  colorMode(HSB);
  
  background(255);
  
  t1 = 0;
  t2 = 10;
}

function draw() {

  n1 = noise( t1 );
  h1 = map(n1, 0, 1, 0, height);
  stroke( 270, 100, 100, 0.5 );
  rect( frameCount * 2, height - h1, 0, h1 );
  t1 = t1 + 0.02;
  
  n2 = noise( t2 );
  h2 = map(n2 * 0.5, 0, 1, 0, height);
  stroke( 120, 100, 100, 0.5 );
  rect( frameCount * 2, height - h2, 0, h2 );
  t2 = t2 + 0.01;
}