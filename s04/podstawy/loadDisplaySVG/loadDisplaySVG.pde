PShape logo;

void setup() {
  size(800, 500);
  background(255);
  logo = loadShape("cc.svg");
} 

void draw(){
  shape(logo, 110, 90, logo.width/2, logo.height/2);    
  shape(logo, 20, 240); 
}