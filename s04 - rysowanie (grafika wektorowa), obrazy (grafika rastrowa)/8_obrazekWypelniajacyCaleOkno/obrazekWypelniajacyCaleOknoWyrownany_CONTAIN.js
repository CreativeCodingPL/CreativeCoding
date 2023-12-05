let img;

function preload() {
  img = loadImage('assets/image.jpg');
}

function setup() {
  createCanvas(500, 500);
  background('#333');
  
  // rozmiar prostokąta, w którym "umieścimy" obrazek
  let cx = 0; // położenie obrazka od lewej
  let cy = 0; // położenie obrazka od góry
  let cw = width;  // długość obrazka do pokazania na ekranie (500)
  let ch = height; // wysokość obrazka do pokazania na ekranie (500)
  
  // rzeczywisty rozmiar obrazka (taki, jaki jest zapisany w pliku image.jpg)
  let ix = 0; // położenie obrazka od lewej
  let iy = 0; // położenie obrazka od góry
  let iw = img.width;  // rzeczywista długość obrazka, tak jak jest zapisany (1000)
  let ih = img.height; // rzeczywista wysokość obrazka, tak jak jest zapisany (750)
  
  // CONTAIN oznacza wypełnienie całego prostokąta, w którym będzie umieszczony obrazek
  // w taki sposób, aby go nie kadorwać obrazka, ale dopasować
  image(img, cx, cy, cw, ch, ix, iy, iw, ih, CONTAIN);
}