let img;
let scaleX, scaleY, scale;
let offsetX, offsetY;

function preload() {
  img = loadImage("assets/image.jpg");
}

function setup() {
  createCanvas(500, 500);

  // Obliczenie skali (potrzebne aby zeskalować obrazek do rozmiaru płótna)
  scaleX = width / img.width;
  scaleY = height / img.height;
  scale = max(scaleX, scaleY);

  // Przeskalowanie obrazka
  img.resize(img.width * scale, img.height * scale);

  // Obliczenie przesunięcia, aby wyśrodkować obraz
  offsetX = (img.width - width) / 2;
  offsetY = (img.height - height) / 2;

  // Grubość punktu
  strokeWeight(20);
}

function draw() {
  let canvasX = random(width);
  let canvasY = random(height);

  // Zamiana pozycji na płótnie na pozycje w obrazie
  let imgX = canvasX + offsetX;
  let imgY = canvasY + offsetY;

  let c = img.get(imgX, imgY);

  stroke(c);
  point(canvasX, canvasY);
}

function mousePressed() {
  saveCanvas();
}
