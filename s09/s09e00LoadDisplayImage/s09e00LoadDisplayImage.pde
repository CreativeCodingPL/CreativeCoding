/**
 * Load and Display 
 * 
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size. 
 */

PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("moonwalk.jpg");  // Load the image into the program  
  strokeWeight(25);
  background(255);
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  //image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  for (int i =0; i<500; i++) { 
    int x = int(random(0, width));
    int y = int(random(0, height));
    color c = img.get(x, y);
    stroke(c, 50);
    point(x, y);
  }
}