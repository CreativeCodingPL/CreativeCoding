class Beat1Visu {
  
  float anim = 0.0;
  float maxSize = 200;
  
  
  Beat1Visu(){
    
  }
  
  
  void draw(){
    
    if( anim <= 1 ){
     anim += 0.05; 
    }
    
    fill( #0A86FF, (1-anim) * 255 );
    ellipse( 0, 0, anim*maxSize, anim*maxSize );
    
  }
  
  boolean finished(){
    
    return ( anim <= 1 ) ? false : true;
    
  }
  
  
}