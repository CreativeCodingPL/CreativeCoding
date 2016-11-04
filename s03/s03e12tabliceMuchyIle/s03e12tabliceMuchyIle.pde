int ileMuch = 10000;
float[] muchaX = new float[ileMuch];
float[] muchaY = new float[ileMuch]; 

void setup(){
  size(500, 500);
  strokeWeight(5);
  stroke(0, 30);
  for(int i=0; i<ileMuch; i++)
  {
    muchaX[i] = width/2;
    muchaY[i] = height/2;
  }
}

void draw(){
  background(255);
  for(int i=0; i<ileMuch; i++)
  {
    point(muchaX[i], muchaY[i]);
    muchaX[i] = muchaX[i] + random(-4, 4);
    muchaY[i] = muchaY[i] + random(-4, 4);
  }
}

void keyPressed(){
   saveFrame("obraz.jpg");
}