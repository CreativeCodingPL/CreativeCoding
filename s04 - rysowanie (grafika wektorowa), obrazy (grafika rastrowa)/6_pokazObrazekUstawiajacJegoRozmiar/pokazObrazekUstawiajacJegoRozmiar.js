let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(500, 500);
  background("#333");
  
  let x = 0; // odsunięcie od lewej
  let y = 0; // odsunięcie od góry
  let w = 500; // długość obrazka
  let h = 375; // wysokość obrazka
  
  image(img, x, y, w, h);
}