// === kod 01 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(30);
  frameRate(60);
}

function draw() {
  background(220);
  point(250, 250 + 100*sin(frameCount));
}

// === kod 02 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(30);
  frameRate(60);
}

function draw() {
  background(220);
  point(350, 250 + 100*sin(0.12*frameCount));
  point(250, 250 + 100*sin(0.1*frameCount));
  point(150, 250 + 100*sin(0.11*frameCount));
}

// === kod 03 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(30);
  frameRate(60);
}

function draw() {
  background(220);
  for(i = 1; i<10; i++){
    point(50*i, 250 + 100*sin(0.11*frameCount));  
  }
}

// === kod 04 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(30);
  stroke(0, 30);
  frameRate(60);
}

function draw() {
  background(220);
  for(i = 1; i<10; i=i+0.05){
    point(50*i, 250 + 100*sin(i*0.01*frameCount));  
  }
}

// === kod 05 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(10);
  stroke(0, 3);
  frameRate(60);
  background(220);
}

function draw() {
  for(i = 1; i<10; i=i+0.1){
    point(50*i, 250 + 100*sin(i*0.01*frameCount));  
  }
}

// === kod 06 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(10);
  stroke(0, 3);
  frameRate(60);
  background(220);
  fill(255, 10);
}

function draw() {
  rect(-10,-10, width+20, height+20);
  for(i = 1; i<10; i=i+0.01){
    point(50*i, 250 + 100*sin(i*0.01*frameCount));  
  }
}

// === kod 07 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(30);
  stroke(0, 30);
  frameRate(60);
  background(220);
  fill(255, 10);
}

function draw() {
  rect(-10,-10, width+20, height+20);
  for(i = 1; i<10; i=i+0.5){
    point(50*i, 250 + 100*sin(i*0.01*frameCount));  
  }
}

// === kod 08 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(30);
  stroke(0);
  frameRate(60);
    background(220);
  fill(255, 20);

}

function draw() {
  rect(-10,-10, width+20, height+20);

  point(250 + 50*sin(0.15*frameCount+1.6), 250 + 50*sin(0.15*frameCount));  
  point(250 + 100*sin(-0.1*frameCount+1.6), 250 + 100*sin(-0.1*frameCount));  
  point(250 + 150*sin(0.12*frameCount+1.6), 250 + 150*sin(0.12*frameCount));  
}

// === kod 09 ===================
function setup() {
  createCanvas(550, 500);
  strokeWeight(20);
  stroke(0);
  frameRate(60);
    background(220);
  fill(255, 2);

}

function draw() {
  rect(-10,-10, width+20, height+20);

  point(250 + 50*sin(0.1*frameCount+1.6), 250 + 50*sin(0.15*frameCount));  
  point(250 + 100*sin(-0.12*frameCount+1.6), 250 + 100*sin(-0.1*frameCount));  
  point(250 + 150*sin(0.033*frameCount+1.6), 250 + 150*sin(0.021*frameCount));  
}

// === kod 10 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30);
  frameRate(60);
  background(255);

}

function draw() {
  fala = 30*sin(0.1*frameCount)
  point(frameCount, 250+fala)
}

// === kod 11 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30);
  frameRate(60);
  background(255);

}

function draw() {
  fala = 20*sin(0.2*frameCount)
  point(250+150*sin(0.01*frameCount), 250+150*cos(0.01*frameCount)+fala)
}

// === kod 12 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  fala = 20*sin(0.03*frameCount+0.1*frameCount%60)
  point(250+(150+fala)*sin(0.01*frameCount), 250+(150+fala)*cos(0.01*frameCount))
}

// === kod 13 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  fala = 20*sin(0.1*frameCount+0.5)+10*sin(0.12*frameCount+0.1)+30*sin(0.07*frameCount)
  point(250+(150+fala)*sin(0.01*frameCount), 250+(150+fala)*cos(0.01*frameCount))
}

// === kod 14 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  R = frameCount * 0.2;
  point(250+(R)*sin(0.1*frameCount), 250+(R)*cos(0.1*frameCount))
}

// === kod 15 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(30);
  stroke(30, 150);
  frameRate(60);
  background(255);

}

function draw() {
  R = 150;
  point(
        250+(R)*sin(0.1*frameCount)+R/2*cos(0.4*frameCount), 
        250+(R)*cos(0.1*frameCount)+R/2*sin(0.4*frameCount)
  )
}

// === kod 16 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  fala1 = 20*sin(0.1*frameCount+0.5)
  fala2 = 10*sin(0.12*frameCount+0.1)
  fala3 = 30*sin(0.07*frameCount)
  R = random(100, 150)
  point(250+(R+fala1)*sin(0.01*frameCount), 250+(R+fala1+fala2)*cos(0.01*frameCount))
    point(250+(R+fala2)*sin(0.01*frameCount), 250+(R+fala2)*cos(0.01*frameCount))
    point(250+(R+fala3)*sin(0.01*frameCount), 250+(R+fala3+fala1)*cos(0.01*frameCount))
}

// === kod 17 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  fala1 = 20*sin(0.1*frameCount+0.5)
  fala2 = 10*sin(0.12*frameCount+0.1)
  fala3 = 30*sin(0.07*frameCount)
  R = 250*noise(frameCount*0.01)
  point(250+(R+fala1)*sin(0.01*frameCount), 250+(R+fala1+fala2)*cos(0.01*frameCount))
    point(250+(R+fala2)*sin(0.01*frameCount), 250+(R+fala2)*cos(0.01*frameCount))
    point(250+(R+fala3)*sin(0.01*frameCount), 250+(R+fala3+fala1)*cos(0.01*frameCount))
}

// === kod 18 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  R = 250*noise(100000+frameCount*0.001)
  point(250+R*sin(0.03*frameCount), 250+R*cos(0.03*frameCount))
}

// === kod 19 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 50);
  frameRate(60);
  background(255);

}

function draw() {
  R = 150
  line(250, 250, 250+R*sin(0.03*frameCount), 250+R*cos(0.03*frameCount))
}

// === kod 20 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(10);
  stroke(30, 250);
  frameRate(60);


}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  background(255);
  R = 150
  wskazowka(250, 250, 100, 0.1*frameCount)
  wskazowka(150, 150, 140, 0.12*frameCount)
  wskazowka(350, 350, 120, 0.11*frameCount)
}

// === kod 21 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(3);
  stroke(30, 250);
  frameRate(60);


}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  background(255);
  for(col = 30; col<width; col = col + 30) {
      wskazowka(col, 150, 15, 0.1*frameCount)
      wskazowka(col, 250, 15, 0.1*frameCount)
      wskazowka(col, 350, 15, 0.1*frameCount)
      wskazowka(col, 450, 15, 0.1*frameCount)
      wskazowka(col, 100, 15, 0.1*frameCount)
  }

}

// === kod 22 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(3);
  stroke(30, 250);
  frameRate(60);


}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  background(255);
  for(kol = 30; kol<width; kol = kol + 30) {
    for(wie = 30; wie<height; wie = wie + 30) {
      wskazowka(kol, wie, 15, random(0.1, 0.105)*frameCount)
    }
  }
}

// === kod 23 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(3);
  stroke(30, 250);
  frameRate(60);


}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  background(255);
  for(kol = 30; kol<width; kol = kol + 30) {
    for(wie = 30; wie<height; wie = wie + 30) {
      wskazowka(kol, wie, 15, 0.1*noise(0.01*kol)*frameCount)
    }
  }
}

// === kod 24 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(1);
  stroke(30, 250);
  frameRate(60);


}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  background(255);
  for(kol = 10; kol<width; kol = kol + 10) {
    for(wie = 10; wie<height; wie = wie + 10) {
      wskazowka(kol, wie, 15, 0.1*noise(0.0005*wie, 0.0005*kol)*frameCount)
    }
  }
}

function mousePressed() {
  saveFrames();
}

// === kod 25 ===================
function setup() {
  createCanvas(500, 500);
  strokeWeight(1);
  stroke(30, 250);
  frameRate(60);

  fill(255, 30);
  background(255);
  //noiseSeed(2000);
}

function wskazowka(x, y, dlugosc, kat) {
  line(x, y, x+dlugosc*sin(kat), y+dlugosc*cos(kat))
}

function draw() {
  rect(0,0, width, height)
  for(kol = 10; kol<width; kol = kol + 10) {
    for(wie = 10; wie<height; wie = wie + 10) {
      wskazowka(kol, wie, 15, 0.1*noise(0.0005*wie, 0.0005*kol)*frameCount)
    }
  }
}

function mousePressed() {
  saveCanvas();
}
