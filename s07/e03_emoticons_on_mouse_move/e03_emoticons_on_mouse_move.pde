void setup() {
  size(500, 500);
  colorMode(HSB);
}

void emoticon(float x, float y, float scale) {
  
  head      (x, y, scale);
  eye_left  (x, y, scale);
  eye_right (x, y, scale);
  mouth     (x, y, scale);
  
}

void head(float x, float y, float scale) {

  float head_pos = 100;
  float head_size = 150;
  
  fill(random(360), 255, 255);
  
  ellipse(
    (scale * head_pos) + x, 
    (scale * head_pos) + y, 
    scale * head_size, 
    scale * head_size
  );
}

void eye_left(float x, float y, float scale) {

  float x_eye = 75;
  float y_eye = 85;
  float size_eye_w = random(15, 30);
  float size_eye_h = random(15, 30);
  
  fill(255);
  ellipse(
    (scale * x_eye) + x, 
    (scale * y_eye) + y, 
    scale * size_eye_w, 
    scale * size_eye_h
  );

  fill(0);
  ellipse(
    (scale * x_eye) + x, 
    (scale * y_eye) + y, 
    scale * size_eye_w / 3, 
    scale * size_eye_h / 3
  );
}

void eye_right(float x, float y, float scale) {

  float x_eye = 125;
  float y_eye = 85;
  float size_eye_w = random(15, 30);
  float size_eye_h = random(15, 30);
  
  fill(255);
  ellipse(
    (scale * x_eye) + x, 
    (scale * y_eye) + y, 
    scale * size_eye_w, 
    scale * size_eye_h
  );

  fill(0);
  ellipse(
    (scale * x_eye) + x, 
    (scale * y_eye) + y,  
    scale * size_eye_w / 3, 
    scale * size_eye_h / 3
  );
}

void mouth(float x, float y, float scale) {

  float x1_linia = 60; 
  float x2_linia = 140;
  float y1 = 125;  
  float x_arc = 100;
  float width_arc = 80;
  float height_arc = 50;

  fill(10, 255, 255);
  arc(
    (scale * x_arc) + x, 
    (scale * y1) + y, 
    scale * width_arc, 
    scale * height_arc, 
    0, PI
    );
  line(
    (scale * x1_linia) + x, 
    (scale * y1) + y, 
    (scale * x2_linia) + x, 
    (scale * y1) + y
  );
}

void draw() {
}

void mouseMoved() {
  
  float scale = random(0.25, 1.5);
  
  emoticon( 
    mouseX - (scale * 100), 
    mouseY - (scale * 100),
    scale
  );
}

void keyPressed() {
  saveFrame("emoticons_mouse_move.png");
}
