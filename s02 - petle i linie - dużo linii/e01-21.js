// === kod 01 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(50);
  a = -50;
}

function draw() {
  background(220);
  point(a, height/2);
  a = a + 10;
  if(a > 550) a = -50;
}

// === kod 02 ===================
function setup() {
    createCanvas(500, 500);
    strokeWeight(50);
    a = -50;
    background(220);
  }
  
function draw() {

  point(width/2, a);
  a = a + 10;
  if(a > height+50) {
    a = -50;
    stroke(random(255),random(255),random(255));
  }
}

// === kod 03 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(50);
  a = -50;
  background(220);
}

function draw() {
  point(width/2, a);
  a = a + 10;
  if(a > height+50) {
    a = -50;
  }
  if(a % 50 == 0) stroke(random(255),random(255),random(255)) 
}

// === kod 04 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(50);
  a = -50;
  background(220);
  k = 50;
}

function draw() {
  point(width/2, a);
  a = a + 3;
  if(a > height+50) 
  {
    a = -50;
    k = 50;
  }
  if(a > k) 
  {
    stroke(random(255),random(255),random(255));
    k = k + 50;
  }
}

// === kod 05 ===================
function setup() {
    createCanvas(500, 500);
    strokeWeight(3);
}
  
function draw() {
  background(220);
  bs = 50;
  //    x1  y1   x2      y2
  line(50, bs, width-50, bs);
  bs = bs + 25;
  line(50, bs, width-50, bs);
  bs = bs + 25;
  line(50, bs, width-50, bs);
  bs = bs + 25;
  line(50, bs, width-50, bs);
  bs = bs + 25;
  line(50, bs, width-50, bs);
}

// === kod 06 ===================
  function setup() {
    createCanvas(500, 500);
    strokeWeight(2);
}
  
function draw() {
  background(220);
  bs = 50;
  while (bs < height) 
  {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + 5;
  }
}

// === kod 07 ===================
  function setup() {
    createCanvas(500, 500);
    strokeWeight(2);
      bs = 50;
      background(220);
  }
  
function draw() {

    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + 5;
  
}


// === kod 08 ===================
// === super przypadek!!! Dzięki Gabrieli :)
  function setup() {
    createCanvas(500, 500);
    strokeWeight(1);
    odstep = 10;
      background(220);
}
  
function draw() {

  bs = 50;
  while (bs < height) {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + odstep;
  }
  odstep = odstep + 0.1;
}
  
// === kod 09 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(1);
  odstep = 15;
  background(220);
}

function draw() {
  bs = 50;
  while (bs < height) {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + odstep;
  }
  odstep = odstep + 0.1;
  stroke(odstep * 3);
}

// === kod 10 ===================
function setup() {
    createCanvas(500, 500);
    strokeWeight(2);
    odstep = 4;
  }
  
function draw() {
  background(220);
  bs = 50;
  while (bs < height) 
  {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + odstep;
  }
  odstep = odstep + .1
  if (odstep>50) odstep = 4;
}

// === kod 11 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(2);
  odstep = 4;
}

function draw() {
  background(220);
  bs = 50;
  while (bs < height) 
  {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
    bs = bs + odstep;
  }
  odstep = odstep + .1
  if (odstep>50) noLoop();
}

// === kod 12 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(2);
  odstep = 4;
  k = 0;
}

function draw() {
  background(220);
  bs = 150;
  while (bs < height*2) 
  {
    //    x1  y1   x2      y2
    line(50, 0.6*bs+k, width - 50, bs-k);
    line(0.3*bs+k, 50, bs-k, width - 50);
    bs = bs + odstep;
  }
  odstep = odstep + 0.1;
  k = k + 0.5;
  if (odstep>50) {
    noLoop();
    saveCanvas("obraz.png");
  }
}

// === kod 13 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(2);
  odstep = 4;
  k = 0;
}

function draw() {
  background(220);
  bs = 150;
  while (bs < height*2) 
  {
    //    x1  y1   x2      y2
    line(50, 0.6*bs+k, width - 50, bs-k);
    line(3.6*bs+k, 50, width - 50, bs-k);
    bs = bs + odstep;
  }
  odstep = odstep + 0.1;
  k = k + 0.5;
  if (odstep>50) {
    saveCanvas("obraz.png");
  }
}

// === kod 14 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(2);
}

function draw() {
  background(220);
  
  for(bs = 50; bs < height-50; bs = bs + 15) 
  {
    //    x1  y1   x2      y2
    line(50, bs, width - 50, bs);
  }
}

// === kod 15 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(2);
  stroke(0, 150);
}
  
function draw() {
  background(220);
  
  for(bs = 50; bs < height-50; bs = bs + 0.5) 
  {
    //    x1  y1   x2      y2
    a = random(-2, 2);
    b = random(-2, 2);
    line(50, bs+a, width - 50, bs+b);
  }
}

// === kod 16 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(1);
  stroke(0, 50);
}

function draw() {
  background(220);
  
  for(bs = 50; bs < height-50; bs = bs + 0.2) 
  {
    //    x1  y1   x2      y2
    a = random(-2, 2);
    b = random(-2, 2);
    line(50, bs+a, width - 50, bs+b);
  }
}

// === kod 17 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(1);
  stroke(0, 150);
}

function draw() {
  background(220);
  
  for(bs = 50; bs < height-50; bs = bs + 20) 
  {
    //    x1  y1   x2      y2
    a = random(-5, 5);
    b = random(-5, 5);
    line(50, bs+a, width - 50, bs+b);
    line(bs+a, 50, bs+b, width - 50);
  }
}

function keyPressed() {
  saveCanvas(); 
}

// === kod 18 ===================
function setup() {
  createCanvas(200, 200);
  strokeWeight(1);
  stroke(255);
}

function draw() {
  background(0);

  for(n = 0; n < 1000; n = n + 1) 
  {
    point(random(width), random(height));
  }
}

function keyPressed() {
  saveCanvas(); 
}

// === kod 19 ===================
function setup() {
  createCanvas(200, 200);
  strokeWeight(1);
  stroke(255);
}

function draw() {
  background(0);

  for(n = 0; n < 10000; n++) 
  {
    point(random(width), random(height));
  }
}

function keyPressed() {
  saveCanvas(); 
}

// === kod 20 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(50);
  stroke(0);
  fill(255, 100);
}

function draw() {
  point(5*frameCount, 150)
  point(10*frameCount, 250)
  point(2*frameCount, 350)
  rect(0, 0, 500, 500);
  if(frameCount > 600) frameCount = 0;
}

function keyPressed() {
  saveCanvas(); 
}

// === kod 21 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(50);
  stroke(0);
  fill(255, 100);
  //60 klatek na sekunde
  frameRate(60);
}

function draw() {
  point(5*frameCount, 150)
  point(10*frameCount, 250)
  point(2*frameCount, 350)
  rect(0, 0, 500, 500);
  //po 5 sekundach zaczynam od poczatku
  if(frameCount > 5*60) frameCount = 0;
}

function keyPressed() {
  saveCanvas(); 
}
