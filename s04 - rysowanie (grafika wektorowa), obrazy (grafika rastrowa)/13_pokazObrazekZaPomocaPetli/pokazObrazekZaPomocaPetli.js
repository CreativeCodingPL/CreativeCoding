let img;

function preload() {
  img = loadImage("assets/image.jpg");
}

function setup() {
  createCanvas(500, 500);

  // zmiana proporcji obrazka (panorama)
  // z 1000x750 na (1000 * 500 / 750) x 500 (height) >>> 667x500
  img.resize((img.width * height) / img.height, height);

  // jeśli obrazek byłyby portretem (np. 750x1000), to zmiana byłaby
  // z 750x1000 na 500 (width) x (1000 * 500 / 750) >>> 500x667
  //img.resize(width, img.height * width / img.width);

  // w przypadku kwadratowego obrazka wystarczy zmienić rozmiar
  // na wielkość płótna (canvas), np. jeśli obrazek ma 1000x1000 >>> 500x500
  //img.resize(width, height);

  let n = 20;
  
  strokeWeight(n);
  
  for (i = n; i < width; i = i + n) {
    
    for (j = n; j < height; j = j + n) {
      
      let c = img.get(i, j);

      stroke(c);
      point(i, j);
    }
  }
}

function mousePressed() {
  saveCanvas();
}
