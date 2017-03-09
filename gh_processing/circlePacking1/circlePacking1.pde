// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/QHEQuoIKgNE

import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

ArrayList<Circle> circles;

void setup() {
  size(640, 360);
  
   // osc
  oscP5 = new OscP5(this,12000);//sending from this port
  myRemoteLocation = new NetAddress("127.0.0.1",12001);
  
  circles = new ArrayList<Circle>();
}

void draw() {
  background(0);


  int total = 10;
  int count = 0;
  int attempts = 0;

  while (count <  total) {
    Circle newC = newCircle();
    if (newC != null) {
      circles.add(newC);
      count++;
    }
    attempts++;
    if (attempts > 1000) {
      noLoop();
      println("FINISHED");
      break;
    } 
  }


  for (Circle c : circles) {
    if (c.growing) {
      if (c.edges()) {
        c.growing = false;
      } else {
        for (Circle other : circles) {
          if (c != other) {
            float d = dist(c.x, c.y, other.x, other.y);
            if (d - 2 < c.r + other.r) {
              c.growing = false;
              break;
            }
          }
        }
      }
    }
    c.show();
    c.grow();
  }
}

Circle newCircle() {

  float x = random(width);
  float y = random(height);

  boolean valid = true;
  for (Circle c : circles) {
    float d = dist(x, y, c.x, c.y);
    if (d < c.r) {
      valid = false;
      break;
    }
  }

  if (valid) {
    return new Circle(x, y);
  } else {
    return null;
  }
}

void sendOSCMessage(){
  
  OscMessage myMessage = new OscMessage("/circleData");
  
  for (Circle c : circles) {
    
    myMessage.add(  c.x );
    myMessage.add(  c.y );
    myMessage.add(   c.r  );
    
  }

  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
  
}

void keyPressed(){
  
 sendOSCMessage();
  
}