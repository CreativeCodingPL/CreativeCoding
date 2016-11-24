// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-1: Display video

// Step 1. Import the video library
import processing.video.*;

// Step 2. Declare a Capture object
Capture video;

void setup() {
  size(320, 240);
  //println(Capture.list());
  strokeWeight(30);
  // Step 3. Initialize Capture object via Constructor
  // Use the default camera at 320x240 resolution
  video = new Capture(this, 320, 240);
  video.start();
}

// An event for when a new frame is available
void captureEvent(Capture video) {
  // Step 4. Read the image from the camera.
  video.read();
}

void draw() {
  // Step 5. Display the video image.
  //image(video, 0, 0);
  for(int i=0; i<500; i++) {
     int x = int(random(0, width));
    int y = int(random(0, height));
    color c = video.get(x, y);
    float b = brightness(c);
    strokeWeight(b/10);
    stroke(c, 50);
    point(x, y);
  }
}