// Szum Perlina (ang. Perlin Noise), to algorytm tworzący losowy ciąg liczb, który jest “płynny”

function setup() {
  
  createCanvas(500, 500);
    
  colorMode(HSB);
  
  background(255);
  
  strokeWeight(20);
  stroke( 270, 100, 100);
}

function draw() {
  
  n = noise( frameCount * 0.01 );
  
  point( frameCount, height/2 + n * (height/2) );
}