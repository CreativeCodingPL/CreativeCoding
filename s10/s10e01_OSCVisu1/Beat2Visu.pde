class Beat2Visu {
  
  float anim = 0.0;
  float maxSize = 200;
  
  
  Beat2Visu(){
    
  }
  
  
  void draw(){
    
    if( anim <= 1 ){
     anim += 0.05; 
    }
    
    noStroke();
    fill( #800AFF, (1-anim) * 255 );
    rectMode( CENTER );
    rect( 0, 0, anim*maxSize, anim*maxSize );
    
  }
  
  boolean finished(){
    
    return ( anim <= 1 ) ? false : true;
    
  }
  
  
}