import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

Flock flock;
boolean runSimulation = true;



void setup() {
  size(640, 360);
  
  // osc
  oscP5 = new OscP5(this,12000);//sending from this port
  myRemoteLocation = new NetAddress("127.0.0.1",12001);
  
  // flock
  flock = new Flock();
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
  
}

void draw() {
  background(100);
  if( runSimulation ){
    flock.run();
    sendOSCMessage();
  }
  
}

void sendOSCMessage(){
  
  OscMessage myMessage = new OscMessage("/flockData");
  
  for (Boid boid : flock.boids) {
    
    myMessage.add( String.valueOf( boid.position.x ) );
    myMessage.add( String.valueOf( boid.position.y ) );
    
  }

    
  // prints the message on the console
  //print( myMessage );
    
  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
  
  //println( myMessage );
  
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
}

void keyPressed(){
  runSimulation = !runSimulation;
 //sendOSCMessage(); 
}