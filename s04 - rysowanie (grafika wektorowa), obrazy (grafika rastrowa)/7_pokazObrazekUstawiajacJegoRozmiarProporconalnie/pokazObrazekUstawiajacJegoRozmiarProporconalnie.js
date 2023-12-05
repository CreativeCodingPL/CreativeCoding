let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(500, 500);
  background("#333");
  
  let x = 0;
  let y = 0;
  let w = width; // długość okna (500)
  let h = width * img.height / img.width; // szerokość obrazka z zachowaniem jego proporcji
  
  image(img, x, y, w, h);
}