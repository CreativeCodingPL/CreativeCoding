import controlP5.*;

ControlP5 cp5;

float w = 25;
float h = 25;

boolean switchColor = false;
boolean debug = true;

void setup(){
  
  size( 800, 600 );
  
  cp5 = new ControlP5( this );
  
  // name, minValue, maxValue, defaultValue, x, y, width, height
  cp5.addSlider("sliderA", 10, 100 );
  cp5.addButton("myButton", 100 );
  cp5.addToggle("myToggle", true );
  
}


void draw(){
  
  background( 50 );
  
  if( switchColor ){
    fill( #FF6F61 );
  }else{
    fill( #03FFF0 );
  }
  
  
  ellipse( 200, 200, w, h );
  
}

void myToggle( boolean value ){
  switchColor = value;
}

void sliderA( float value ){
  w = value;
}

void myButton(){
  //println("hello");
  switchColor = !switchColor;
}


void keyPressed(){
  
  if( key == 'd' ){
    debug = !debug;
  }
  
  if( debug ){
    cp5.show();
  }else{
    cp5.hide();
  }
  
}
