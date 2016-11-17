float kat = radians(30);
int ilePoziomow = 5;

void setup(){
  size(700,700);
}

void draw(){
  background(255);
  
  PVector korzen = new PVector(width/2,height);
  PVector pien = new PVector(0, -200);
  drzewo(korzen, pien, 0);
}

void drzewo(PVector sek, PVector konar, int poziom){
  PVector nowySek = PVector.add(sek, konar);
  line(sek.x, sek.y, nowySek.x, nowySek.y);
  poziom++;
  
  if (poziom < ilePoziomow){
    PVector nowyKonarL = PVector.mult(konar, 0.66);
    nowyKonarL.rotate(-kat);
    PVector nowyKonarP = PVector.mult(konar, 0.66);
    nowyKonarP.rotate(kat);
    drzewo(nowySek, nowyKonarL, poziom);
    drzewo(nowySek, nowyKonarP, poziom);
  } 
}