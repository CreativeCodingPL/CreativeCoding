import controlP5.*;
ControlP5 cp5;

int steps = 10;
float R = 200;
boolean guiVisible = true;
boolean showCircles = true;
float ellipseRadius = 5;
float freq = 10;
float bgColor = 127;
float fillColor = 255;
void setup(){
  size(800, 800);
  cp5 = new ControlP5(this);
  cp5.addSlider("steps",3,100).setDecimalPrecision(1).linebreak();
  cp5.addSlider("R", 20, 400).linebreak();
  cp5.addSlider("bgColor", 0, 255).linebreak();
  cp5.addSlider("fillColor", 0, 255).linebreak();
  cp5.addSlider("ellipseRadius", 5, 100).linebreak();
  cp5.addSlider("freq", 1, 100).linebreak();
  cp5.addToggle("showCircles").linebreak();
  cp5.addButton("save");
}
void draw(){
  background(bgColor);
  fill(fillColor);
  //noFill();
  beginShape();
  for(int i=0;i<steps; i++){
    //0, 1, 2
    float angle = i * (TWO_PI)/float(steps);
    
    float x = cos(angle);
    float y = sin(angle);
    float n = noise(x*10.0+100,y*10.0+100, frameCount/freq);
    x=x*R*n + width/2;
    y=y*R*n + height/2;
    vertex(x,y);
    if(showCircles){
      ellipse(x,y, ellipseRadius/2, ellipseRadius/2);
    }
  }
  endShape(CLOSE);
  beginShape();
  for(int i=0;i<steps; i++){
    //0, 1, 2
    float angle = i * (TWO_PI)/float(steps);
    
    float x = cos(angle);
    float y = sin(angle);
    float n = noise(x*10.0+100,y*10.0+100, frameCount/freq);
    x=x*(R/2)*n + width/2;
    y=y*(R/2)*n + height/2;
    vertex(x,y);
    if(showCircles){
      ellipse(x,y, ellipseRadius/2, ellipseRadius/2);
    }
  }
  endShape(CLOSE);
  
}
void keyPressed(){
 if(guiVisible){
   cp5.hide();
 }
 else {
   cp5.show();
 }
 guiVisible = !guiVisible;
}
void save(){
  saveFrame("####.png");
}
