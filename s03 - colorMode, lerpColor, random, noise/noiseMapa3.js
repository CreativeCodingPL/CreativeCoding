function setup() {
  
  createCanvas(500, 500);
    
  colorMode(HSB);
  stroke( 300, 100, 100, 0.5 );
  
  background(255);
  
  t1 = 0;
  t2 = 10;
}

function draw() {
  
  n1 = noise( t1 );
  h1 = map(n1, 0, 1, 0, height);
  rect( frameCount, 0, 0, h1 );
  t1 = t1 + 0.01; // bardziej pofalowana
  
  n2 = noise( t2 );
  h2 = map(n2 * 0.5, 0, 1, 0, height);
  rect( frameCount, height - h2, 0, h2 );
  
  t2 = t2 + 0.005; // mniej pofalowana 
}