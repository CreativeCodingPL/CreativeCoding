final int s=1;
final int w=s*560;
final int h=s*340;
 
//MovieMaker mm;
 
float gridU[][] = new float[w][h];
float gridV[][] = new float[w][h];
float gridNext[][] = new float[w][h];
 
float reactionRate = 0.05;//0.05
 
// 3 different ways to make diffusion
// diffusion rate is constant
float diffusionRateU = .04; // .04 the inhabitor
// diffusion rate is different from x to y direction
float diffusionRateUX = .04; //.04
float diffusionRateUY = .03; //.03
// diffusion rate is changing in space
float diffRateUYarr[][] = new float[w][h];
float diffRateUXarr[][] = new float[w][h];
 
float diffusionRateV = .01; // .01 the activator
 
 
float deltaT = 4.0; // time step //4   //moje 1
float deltaXSq = 1.0; // x step 1.0 //moje 5.5
 
float[][] Farr = new float[w][h];
float[][] karr = new float[w][h];
 
boolean movieOn = false;
int count=0;
PImage img;
float a = 1.0;

void settings(){
  size(w,h);
}
void setup() {
  background(255);
  imageMode(CENTER);
  img = loadImage("logo-cc.png"); 
  image(img, w/2,h/2);
  if(movieOn);// mm = new MovieMaker(this,width,height,"reaction"+day()+hour()+minute()+second()+".mov",30, MovieMaker.H263, MovieMaker.HIGH);
 
  // random to make it 2D otherwise it will just be 1d gradient like
  //loadPixels();
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      gridU[i][j] = .5+random(-.01,.01);
      gridV[i][j] = .25+random(-.01,.01);
     
  
/*
      int loc = i + j*w;
      if(brightness(pixels[loc])<100){
      gridU[i][j] = .5+2;//+random(-.01,.01);
      gridV[i][j] = .5+2;//+random(-.01,.01);
      } else {
      gridU[i][j] = .5+random(-.01,.01);
      gridV[i][j] = .25+random(-.01,.01);
      }
      
      if(brightness(pixels[loc])<100) a=300.0; else a=1.0;
      gridU[i][j] = .5+random(-.01*a,.01*a);
      gridV[i][j] = .25+random(-.01*a,.01*a);
      */
    }
  }
 
  setupF();
  setupK();
  setupDiffRates();
}
 
final color cfrom = color(255, 255, 255);
final color cto = color(0, 166, 222);
 
void draw() {
  diffusionU();
  diffusionV();
  reaction();
 
  loadPixels();
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      pixels[j*w+i] = lerpColor(cto, cfrom, gridU[i][j]);//color(255, 130+gridU[i][j]*36, 160+gridU[i][j]*62);
    }
  }
  updatePixels();
 
  //if (count%2==0) {
  //  if(movieOn) mm.addFrame();
  //}
  count++;
}
 
// diffusion of chemical u
void diffusionU() {
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
 
      gridNext[i][j] = gridU[i][j]+deltaT/deltaXSq*
        (diffRateUXarr[i][j]*(gridU[(i-1+w)%w][j]
        +gridU[(i+1)%w][j]-2*gridU[i][j])+
        diffRateUYarr[i][j]*(gridU[i][(j-1+h)%h]
        +gridU[i][(j+1)%h]
        -2*gridU[i][j]));
    }
  }
  float temp[][] = gridU;
  gridU = gridNext;
  gridNext = temp;
}
 
// diffusion of chemical v
void diffusionV() {
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
 
      gridNext[i][j] = gridV[i][j]+diffusionRateV*deltaT/deltaXSq*
        (gridV[(i-1+w)%w][j]
        +gridV[(i+1)%w][j]
        +gridV[i][(j-1+h)%h]
        +gridV[i][(j+1)%h]
        -4*gridV[i][j]
        );
    }
  }
  float temp[][] = gridV;
  gridV = gridNext;
  gridNext = temp;
}
 
// Reaction between chemicals
void reaction() {
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      // new varible because we redefine gridU[i][j] but have to use it in the calculation of gridV[i][j]
      float  uVal = gridU[i][j];
      gridU[i][j] = gridU[i][j] + deltaT*(reactionU(gridU[i][j],gridV[i][j], Farr[i][j], karr[i][j]));
      gridV[i][j] = gridV[i][j] + deltaT*(reactionV(uVal,gridV[i][j], Farr[i][j], karr[i][j]));
    }
  }
}
 
//FitzHugh-Nagumo
float reactionU(float aVal, float bVal, float FVal, float kVal) {
  return reactionRate*(aVal-aVal*aVal*aVal-bVal+kVal);
}
 
float reactionV(float aVal, float bVal, float FVal, float kVal) {
  return reactionRate*FVal*(aVal-bVal);
}
 
// parameter F for reaction is different for every cell
void setupF() {
  //F .04 - .09
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      Farr[i][j] = .01+i*.19/w;
      //Farr[i][j] = .03+i*.02/w;
      //Farr[i][j] = .04;
    }
  }
}
 
// parameter k for reaction is the same for every cell
void setupK() {
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      karr[i][j]=.04+j*0.22/h;
      //karr[i][j] = .06;
    }
  }
}
 
 
void setupDiffRates() {
  // Diffusion rate in vertical direction changes from 0.03 to 0.05
  for(int i=0;i<w;++i) {
    for(int j=0;j<h;++j) {
      diffRateUYarr[i][j] = .03+j*.04/h;
      diffRateUXarr[i][j] = .03+j*.02/h;
      //diffRateUYarr[i][j] = .02;
    }
  }
}
 
// recording movie
void keyPressed() {
  if(key == 'f') {
  
   img.loadPixels();
   for(int i=0;i<img.width;++i) {
    for(int j=0;j<img.height;++j) {
      int loc = i + j*img.width;
      if(brightness(img.pixels[loc])<100){
      gridU[s*(i+100)][s*(j+20)] = .5+1;
      gridV[s*(i+100)][s*(j+20)] = .5+1;
      }
    }
   }
  }
  if(key == 's') {
    save("reaction_"+day()+hour()+minute()+second()+".png");
  }
}