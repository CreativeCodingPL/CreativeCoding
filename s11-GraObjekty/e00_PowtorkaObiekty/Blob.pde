class Blob {
  
  float x = 0;
  float y = 0;
  
  Blob( float x, float y ){
    this.x = x;
    this.y = y;
  }
  
  void display(){
   
    fill( #FF0000 );
    ellipse( x, y, 10, 10 );
    
  }
  
  
  
  
}
