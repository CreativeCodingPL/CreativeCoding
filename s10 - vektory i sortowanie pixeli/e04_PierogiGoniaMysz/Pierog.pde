class Pierog {
  PVector gdzieJest;
  PVector predkosc;

  Pierog() {
    gdzieJest = new PVector(random(500), random(500));
    predkosc = PVector.random2D(); //predkosc jeden w losowym kierunku
    predkosc.mult(random(0.5,1.5));
  }
  
  void aktualizuj() {
    gdzieJest.add(predkosc);
    PVector mysz = new PVector(mouseX, mouseY);
    PVector doMichy = PVector.sub(mysz, gdzieJest);
    doMichy.mult(0.05);
    predkosc = doMichy;
  }

  void rysuj() {
    strokeWeight(0.5);
    fill(#F2AC3B);
    arc(gdzieJest.x, gdzieJest.y, 50, 50, predkosc.heading()-PI/1.5, predkosc.heading()+PI/1.5, PIE);
  }
}
