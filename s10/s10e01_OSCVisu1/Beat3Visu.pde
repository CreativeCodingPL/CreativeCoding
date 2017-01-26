class Beat3Visu {
  
  float anim = 0.0;
  float maxSize = 500;
  
  
  Beat3Visu(){
    
  }
  
  
  void draw(){
    
    if( anim <= 1 ){
     anim += 0.05; 
    }
    
    noStroke();
    fill( #FFF30A, (1-anim) * 255 );
    rectMode( CENTER );
    rect( 0, 0, anim*maxSize, 50 );
    
  }
  
  boolean finished(){
    
    return ( anim <= 1 ) ? false : true;
    
  }
  
  
}