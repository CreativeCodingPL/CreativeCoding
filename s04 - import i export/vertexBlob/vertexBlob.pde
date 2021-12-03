void setup(){
  size( 800, 600 );
}


void draw(){
  
  background( #FFFFFF );
  noFill();
 
  for( int j = 0; j < 10; j ++ ){
    
    float s = 0.1 + (j / 10.0);
  
    beginShape();
    for( int i = 0; i <= 360; i ++ ){
      
      float angle = radians( i );
      
      float r = map( noise( angle, (frameCount + j * 5.0) / 100.0 ), 0, 1, 50*s, 200*s);
      float x = width / 2 + sin( angle ) * r;
      float y = height / 2 + cos( angle ) * r;
      
      // Alternatywna wersja rozwiazujaca problem "niezapętlenia" noise
      // zamiast noise pochodzacego od aktualnego kąta obliczamy noise 3D - do 
      // obliczonej wstepnie pozycji x, y + czas
      
      //float nx = sin( angle );
      //float ny = cos( angle );
      
      //float r = map( noise( nx + j / 10.0, ny + j / 10.0, (frameCount + j * 5.0) / 100.0 ), 0, 1, 50*s, 200*s);
      //float x = width / 2 + nx * r;
      //float y = height / 2 + ny * r;
      
      
      vertex( x, y );
      // alternatywnie:
      //curveVertex( x, y );
     
    }
    endShape(CLOSE);
    
  }
  
}
