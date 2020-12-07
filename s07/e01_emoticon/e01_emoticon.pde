void setup() {
  size(500, 500);
  colorMode(HSB);
  
  emoticon( 150, 150 );
}

void emoticon(float x, float y) {
  
  head(     x, y);
  eye_left( x, y);
  eye_right(x, y);
  mouth(    x, y);
  
}

void head(float x, float y) {

  float head_pos = 100;
  float head_size = 150;
  
  fill(random(360), 255, 255);
  
  ellipse(
    x + head_pos, 
    y + head_pos, 
    head_size, 
    head_size
  );
}

void eye_left(float x, float y) {

  float x_eye = 75;
  float y_eye = 85;
  float size_eye_w = 30;
  float size_eye_h = 30;
  
  fill(255);
  ellipse(
    x + x_eye, 
    y + y_eye, 
    size_eye_w, 
    size_eye_h
  );

  fill(0);
  ellipse(
    x + x_eye, 
    y + y_eye, 
    size_eye_w/3, 
    size_eye_h/3
  );
}

void eye_right(float x, float y) {

  float x_eye = 125;
  float y_eye = 85;
  float size_eye_w = 30;
  float size_eye_h = 30;
  
  fill(255);
  ellipse(
    x + x_eye, 
    y + y_eye, 
    size_eye_w, 
    size_eye_h
  );

  fill(0);
  ellipse(
    x + x_eye, 
    y + y_eye, 
    size_eye_w/3, 
    size_eye_h/3
  );
}

void mouth(float x, float y) {

  float x1_linia = 60; 
  float x2_linia = 140;
  float y1 = 125;  
  float x_arc = 100;
  float width_arc = 80;
  float height_arc = 50;

  fill(10, 255, 255);
  arc(
    x + x_arc, 
    y + y1, 
    width_arc, 
    height_arc, 
    0, PI
  );
  line(
    x + x1_linia, 
    y + y1, 
    x + x2_linia, 
    y + y1
  );
}

void draw() {
}

void keyPressed() {
  saveFrame("emoticon.png");
}
