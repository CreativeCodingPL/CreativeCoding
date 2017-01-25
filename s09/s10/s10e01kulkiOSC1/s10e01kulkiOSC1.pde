import netP5.*;
import oscP5.*;

// The Nature of Code
// Daniel Shiffman
// na podstawie

ArrayList<Mover> kulki = new ArrayList<Mover>();
PVector wind = new PVector(0.0, 0.0);
PVector gravity = new PVector(0, 0.1);

// OSC
OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(700, 500, P3D);
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("127.0.0.1",12000);
}

void draw() {
  background(255);

  for (Mover jakisMover : kulki) { 
    jakisMover.applyForce(wind);
    jakisMover.applyForce(gravity);
    jakisMover.update();
    
    if( jakisMover.collision ){
     sendOSCMessage( -jakisMover.velocity.y, jakisMover.location.x ); 
    }
    
  }
  fill(0);
  text(kulki.size(), 10,20);
}

void sendOSCMessage( float velocity, float posX ){
  
  OscMessage myMessage = new OscMessage("/ball");
  myMessage.add( map( velocity, 0, 10, 0, 1 ) );
  myMessage.add( map( posX, 0, width, 0, 1 ) );
  oscP5.send(myMessage, myRemoteLocation);
  
}

void mousePressed() {
  kulki.add(new Mover(mouseX, mouseY));
}