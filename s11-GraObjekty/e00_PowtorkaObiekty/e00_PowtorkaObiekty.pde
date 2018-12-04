Blob blobJanusz;

void setup(){
  
  size( 800, 600 );
  blobJanusz = new Blob( 100, 50 );
  
  
}

void draw(){
  
  background( 0 );
  blobJanusz.display();
  
  blobJanusz.x = mouseX;
  
}
