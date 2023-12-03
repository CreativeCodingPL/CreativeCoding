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
}

function draw() {
  
  background("#333");
  
  let sw = map(mouseX, 0, width, 10, 30);
  print(sw);
  
  strokeWeight(sw);
  
  for (i = 0; i < img.width; i = i + 20) {
    
    for (j = 0; j < img.height; j = j + 20) {
      
      let c = img.get(i, j);

      stroke(c);
      
      line(i - 5, j + 15, i, j);
    }
  }
}

function mousePressed() {
  saveCanvas();
}
