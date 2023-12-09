let img;
let scaleX, scaleY, scale;
let offsetX, offsetY;

let w = window.innerWidth;
let h = window.innerHeight;

function preload() {
  img = loadImage("assets/image.jpg")
}

function setup() {
  createCanvas(w, h);

  // Grubość punktu
  strokeWeight(20);

  windowResized();
}

function draw() {

  for (let i = 0; i < 10000; i++) {

    let canvasX = random(width);
    let canvasY = random(height);

    // Zamiana pozycji na płótnie na pozycje w obrazie
    let imgX = canvasX + offsetX;
    let imgY = canvasY + offsetY;

    let c = img.get(imgX, imgY);

    stroke(c);
    point(canvasX, canvasY);
  }
}

function windowResized() {

  // assigns new values for width and height variables
  w = window.innerWidth;
  h = window.innerHeight;

  resizeCanvas(w, h);

  // Obliczenie skali (potrzebne aby zeskalować obrazek do rozmiaru płótna)
  scaleX = width / img.width;
  scaleY = height / img.height;
  scale = max(scaleX, scaleY);

  // Przeskalowanie obrazka
  img.resize(img.width * scale, img.height * scale);

  // Obliczenie przesunięcia, aby wyśrodkować obraz
  offsetX = (img.width - width) / 2;
  offsetY = (img.height - height) / 2;

  background("#333");
}

function mousePressed() {
  saveCanvas();
}
