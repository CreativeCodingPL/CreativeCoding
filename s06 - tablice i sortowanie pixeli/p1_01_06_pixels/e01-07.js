// kod 01 =========================
function setup() {
    createCanvas(400, 400);
    background(220);
    frameRate(15);
  }
  
  //testowanie vscode-color-picker 
  function draw() {
    stroke('#15163f3f');
    strokeWeight(20);
    point(random(400), random(400));
  }
  
// kod 02 =========================
  function setup() {
    createCanvas(650, 450);
    background(220);
    frameRate(60);
  }
  // dalczego pixels?
  // na przyklaszie szumiacego ekranu
  // metoda najwolniejsza. pojedyncze FPS (klatki na sek.)
  function draw() {

    for(x = 0; x < width; x++) {
      for(y = 0; y < height; y++) {
        stroke(random(255), random(255), random(255));
        point(x,y);
      }
    }
  }
// kod 03 =========================  
function setup() {
  createCanvas(650, 450);
  background(220);
  frameRate(60);
}
// dalczego pixels?
// na przyklaszie szumiacego ekranu
// metoda posrednia. kilka FPS
function draw() {
  for(x = 0; x < width; x++) {
    for(y = 0; y < height; y++) {
      c = color(random(255), random(255), random(255));
      set(x,y,c);
    }
  }
  updatePixels();
}

// kod 04 =========================
function setup() {
  createCanvas(650, 450);
  background(220);
  frameRate(60);
}
// dalczego pixels?
// na przyklaszie szumiacego ekranu
// metoda najszybsza!!! 60 FPS
function draw() {
  loadPixels();
  for (i = 0; i < pixels.length; i++) {
    pixels[i] = random(255);
  }
  updatePixels();
}

// kod 05 =========================
function setup() {
  createCanvas(600, 500);
  frameRate(60);
  pixelDensity(1);
  img = loadImage('pepe.jpg');
}
// mozna tez zmieniac pixels we wgranym obrazie. NP. pepe.jpg
function draw() {
  img.loadPixels();
  for (i = 0; i < img.pixels.length-10; i+=4) {
    img.pixels[i] = img.pixels[i+4];
    img.pixels[i+1] = 255*i/img.pixels.length;
    img.pixels[i+2] = 0;

  }
  img.updatePixels();
  image(img, 0, 0);
}

// kod 06 =========================
function setup() {
  createCanvas(600, 500);
  frameRate(60);
  pixelDensity(1);
  img = loadImage('pepe.jpg');
}
//zamienia pixel na pozycji i z pixelem na pozycji j w podanje grafice g
//zamienia caly piksel, czyli wszyskie skladowe RGBA. 
function zamienPiksele(i, j, g) {
  R = g.pixels[i];
  G = g.pixels[i+1];
  B = g.pixels[i+2];
  A = g.pixels[i+3];
  g.pixels[i] = g.pixels[j];
  g.pixels[i+1] = g.pixels[j+1];
  g.pixels[i+2] = g.pixels[j+2];
  g.pixels[i+3] = g.pixels[j+3];
  g.pixels[j] = R;
  g.pixels[j+1] = G;
  g.pixels[j+2] = B;
  g.pixels[j+3] = A;
}
// Sortowanie pixeli, czyli zamienianie ich miejscami.
// Ciekawa technika dajace wyjatkowe efekty dla grafiki rastrowej.
function draw() {
  img.loadPixels();
  for (i = 40; i < img.pixels.length-10; i+=4) {
    zamienPiksele(i, i+(i%40), img);
  }
  img.updatePixels();
  image(img, 0, 0);
}
// po wcisnieciu dowolnego klawisza
// zapisanie 2 sek fragmentu animacji w postaci animowanego gif. 
function keyPressed() {
  saveGif('pepe.gif', 2);
} 

// kod 07 =========================
function setup() {
    createCanvas(600, 500);
    frameRate(60);
    pixelDensity(1);
    img = loadImage('pepe.jpg');
  }
  //zamienia pixel na pozycji i z pixelem na pozycji j w podanje grafice g
  //zamienia caly piksel, czyli wszyskie skladowe RGBA. 
  function zamienPiksele(i, j, g) {
    R = g.pixels[i];
    G = g.pixels[i+1];
    B = g.pixels[i+2];
    A = g.pixels[i+3];
    g.pixels[i] = g.pixels[j];
    g.pixels[i+1] = g.pixels[j+1];
    g.pixels[i+2] = g.pixels[j+2];
    g.pixels[i+3] = g.pixels[j+3];
    g.pixels[j] = R;
    g.pixels[j+1] = G;
    g.pixels[j+2] = B;
    g.pixels[j+3] = A;
  }
  // Sortowanie pixeli, czyli zamienianie ich miejscami.
  // Ciekawa technika dajace wyjatkowe efekty dla grafiki rastrowej.
  function draw() {
    img.loadPixels();
    for (i = 0; i < img.pixels.length-10; i+=4) {
      if(img.pixels[i] > img.pixels[i+4])
          zamienPiksele(i+1, i+5, img);
    }
    img.updatePixels();
    image(img, 0, 0);
  }
  