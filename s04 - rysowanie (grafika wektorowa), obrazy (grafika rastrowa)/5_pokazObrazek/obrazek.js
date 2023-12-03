let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(400, 400);
  image(img, 0, 0);
}