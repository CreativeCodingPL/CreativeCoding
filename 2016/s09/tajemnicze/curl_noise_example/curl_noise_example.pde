boolean THREEDEE=false;

ArrayList<PVector> curlParticles;
float ax, ay, pax, pay;

void setup() {
  size(800, 800, P3D); 
  smooth();
  curlParticles=new ArrayList<PVector>();
  int num=THREEDEE?20000:2000;
  for (int i=0; i<num; i++) {
    curlParticles.add(new PVector (random(-400, 400), random(-400, 400),THREEDEE?random(-400, 400):0));
  }
  background(255);
  noiseDetail(THREEDEE?2:6);
  ax=ay=-1;
  pax=pay=0;
  stroke(0,40);
}

void draw() {
  if(pax!=ax || pay !=ay){
    background(255);
  }
  translate(width/2,height/2);
  pax=ax;
  pay=ay;
  if(THREEDEE){
    ax=map(mouseY,0,height,-PI,PI);
    ay=map(mouseX,0,width,-PI,PI);
    rotateX(ax);
    rotateY(ay); 
  }
  for (PVector p : curlParticles) {
    point(p.x, p.y, p.z);
    p.add(curlNoise(p));
  }

}

//Curl of vector field at position p
//This uses finite difference to approximate the derivatives
PVector curlNoise(PVector p) {
  float e = .4f;//Tune this for smooth behavior, too small values will lead to steps
  PVector dx=new PVector(e, 0, 0);
  PVector dy=new PVector(0, e, 0);
  PVector dz=new PVector(0, 0, e);
  PVector mdx=new PVector(-e, 0, 0);
  PVector mdy=new PVector(0, -e, 0);
  PVector mdz=new PVector(0, 0, -e);
  float x, y, z;
  x=vectorNoise(p, dy).z - vectorNoise(p, mdy).z
    - vectorNoise(p, dz).y + vectorNoise(p, mdz).y;
  y = vectorNoise(p, dz).x - vectorNoise(p, mdz).x
    - vectorNoise(p, dx).z + vectorNoise(p, mdx).z;
  if (THREEDEE) {
    z=vectorNoise(p, dx).y - vectorNoise(p, mdx).y
      - vectorNoise(p, dy).x + vectorNoise(p, mdy).x;
  } else {
    z=0;
  }

  PVector result=new PVector(x, y, z); 
  result.normalize() ;
  //result.mult(0.4);
  return result;
}


//Vector at position (p+dp)
PVector vectorNoise(PVector p, PVector dp) {
  float f=0.0035;
  return new PVector(
    noise(f*(p.x+dp.x)+10, f*(p.y+dp.y)-20, f*(p.z+dp.z)-20), 
    noise(f*(p.x+dp.x)-10, f*(p.y+dp.y)+20, f*(p.z+dp.z)+20), 
    noise(f*(p.x+dp.x)+20, f*(p.y+dp.y)+40, f*(p.z+dp.z)+40));
}