let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(500, 500);
  background('#333');
  
  let n = 5;
  
  for ( let i = 0; i < n; i = i + 1 ) {
    
    let s = width / n;
    
    image(img, s * i, s * i, s, s, 0, 0, img.width, img.height, COVER);
  }
}