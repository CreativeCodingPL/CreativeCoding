float px, py, px2, py2;
float angle, angle2;
float radius = 50;
float frequency = 2;
float frequency2 = 2;
float x, x2;

void setup(){
  size(600, 200);
  background (127);
}

void draw(){
  background (127);
  noStroke();
  fill(255);
  ellipse(width/8, 75, radius*2, radius*2);
  
  // Rotates rectangle around circle
  px = width/8 + cos(radians(angle))*(radius);
  py = 75 + sin(radians(angle))*(radius);
  fill(0);

  rect (px, py, 5, 5);
  stroke(100);
  line(width/8, 75, px, py);
  stroke(200);

  // Keep reinitializing to 0, to avoid
  // flashing during redrawing
  angle2 = 0;

  // Draw static curve - y = sin(x)
  for (int i = 0; i< width; i++){
    px2 = width/8 + cos(radians(angle2))*(radius);
    py2 = 75 + sin(radians(angle2))*(radius);
    point(width/8+radius+i, py2);
    angle2 -= frequency2;
  }

  // Send small ellipse along sine curve
  // to illustrate relationship of circle to wave
  noStroke();
  ellipse(width/8+radius+x, py, 5, 5);
  angle -= frequency;
  x+=1;

  // When little ellipse reaches end of window,
  // set the variables back to 0
  if (x >= width-60) {
    x = 0;
    angle = 0;
  }

  // Draw dynamic line connecting circular path with wave
  stroke(50);
  line(px, py, width/8+radius+x, py);

  // Output calculations to screen
  text("y = sin x", 35, 185);
  text("px = " + px, 105, 185);
  text("py = " + py, 215, 185);
}