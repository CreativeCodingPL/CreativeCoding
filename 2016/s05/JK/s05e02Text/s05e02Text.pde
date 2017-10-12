PFont myFont;
String myText = "Hello World!";

void setup() {
  size(800,600);
  myFont = createFont("Arial",40,true); 
}

void draw() {
  
  background(255);
  fill(0);
  
  // -- basic text display --
  //textFont( myFont );
  //text( myText, 10, 50 );
  
  // -- change text size --
  //textFont( myFont );
  //text( myText, 10, 50 );
  //textSize( 30 );
  //text( myText, 100, 100 );
  
  // -- text align --
  //stroke(175);
  //line(width/2,0,width/2,height);

  //textFont( myFont );       
  //fill(0);
  //textAlign(CENTER);
  //text( myText ,width/2,60); 
  //textAlign(LEFT);
  //text( myText ,width/2,100); 
  //textAlign(RIGHT);
  //text( myText ,width/2,140); 
  
  // -- typewriter --
  //textFont( myFont ); 
  //float posX = float(mouseX) / float(width);
  //int textDisplayLength = floor( (myText.length()+1) * posX );
  //String textToDisplay = myText.substring( 0, textDisplayLength );
  
  //textSize( 30 );
  //textAlign(CENTER);
  //text( textToDisplay, width/2, height/2 );
  
  // -- dancing text -- 
  //textFont( myFont );
  //textSize( 24 );
  //int startXPos = width/2;
  //int xPos = startXPos;
  
  //for( int i = 0; i < myText.length(); i ++ ){
      
  //    float moveY = sin( frameCount/20.0 + i*0.2 ) * 50.0;
    
  //    text( myText.charAt(i), xPos, 200 + moveY );
  //    xPos += textWidth( myText.charAt(i) );
    
  //}
  
  
}