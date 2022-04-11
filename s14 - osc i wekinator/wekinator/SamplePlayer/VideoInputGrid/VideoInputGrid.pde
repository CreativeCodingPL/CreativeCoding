/**
 * Adapted from mirror by dan shiffman.
 * This should work better with OS X Catalina
 * Sends 100 inputs to Wekinator
 */ 
 
import processing.video.*;

import oscP5.*;
import netP5.*;


// Size of each cell in the grid
int boxWidth = 64;
int boxHeight = 48;

int numHoriz = 640/boxWidth;
int numVert = 480/boxHeight;
color[] downPix = new color[numHoriz * numVert];


// Number of columns and rows in our system
//int cols, rows;
// Variable for capture device
Capture video;

OscP5 oscP5;
NetAddress dest;

void setup() {
  size(640, 480);
  frameRate(30);
  //cols = width / cellSize;
  //rows = height / cellSize;
  colorMode(RGB, 255, 255, 255, 100);

  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  String[] cameras = Capture.list();
  printArray( cameras );
  
  video = new Capture(this, width, height, cameras[0]);
  // alternatywnie - new Capture(this, 640, 480, "FaceTime HD Camera (Built-in)", 30);

  
  // Start capturing the images from the camera
  video.start();  
  
  background(0);
  
    oscP5 = new OscP5(this,9000);
  dest = new NetAddress("127.0.0.1",6448);
}


void draw() { 
  if (video.available()) {
    video.read();
    video.loadPixels();
  
    // Begin loop for columns
    int counter=0;
    for (int i = 0; i < numHoriz; i++) {
      // Begin loop for rows
      for (int j = 0; j < numVert; j++) {
      
        // Where are we, pixel-wise?
        int x = i*boxWidth;
        int y = j*boxHeight;
       // int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
       int loc = x + y*video.width;
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        // Make a new color with an alpha component
        color c = color(r, g, b);
        
        //SEcond mode:
        int tot = boxWidth * boxHeight;
        float rtot = 0;
        float gtot = 0;
        float btot = 0;
        for (int k = 0; k < boxHeight; k++) {
           for (int l = 0; l < boxWidth; l++) {
               int loc2 = loc + k*width + l;
               rtot += red(video.pixels[loc2]);
               gtot += green(video.pixels[loc2]);
               btot += blue(video.pixels[loc2]);
               
           }
        }
        color c2 = color((int)(rtot/tot), (int)(gtot/tot), (int)(btot/tot));
      
        // Code for drawing a single rect
        // Using translate in order for rotation to work properly
       // pushMatrix();
       // translate(x+cellSize/2, y+cellSize/2);
        // Rotation formula based on brightness
        //rotate((2 * PI * brightness(c) / 255.0));
        rectMode(CENTER);
        fill(c2);
        noStroke();
        // Rects are larger than the cell for some overlap
        rect(x+boxWidth/2,y+boxHeight/2, boxWidth, boxHeight);
        downPix[counter++] = c2;
      //  popMatrix();
      }
    }
  }
  
    if(frameCount % 2 == 0) {
      sendOsc(downPix);

    } 
}

void sendOsc(int[] px) {
  OscMessage msg = new OscMessage("/wek/inputs");
 // msg.add(px);
   for (int i = 0; i < px.length; i++) {
      msg.add(float(px[i])); 
   }
  oscP5.send(msg, dest);
}
