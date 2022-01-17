class Pierog {
  PVector gdzieJest;
  PVector predkosc;

  Pierog() {
    gdzieJest = new PVector(random(500), random(500));
    predkosc = PVector.random2D(); //predkosc jeden w losowym kierunku
    predkosc.mult(random(0.8,1.2));
  }
  
  void aktualizuj() {
    gdzieJest.add(predkosc);
    PVector mysz = new PVector(mouseX, mouseY);
    PVector doMichy = PVector.sub(mysz, gdzieJest);
    doMichy.normalize();
    doMichy.mult(0.4);
    predkosc.add(doMichy);
    predkosc.limit(7);
  }

  void rysuj() {
    strokeWeight(0.5);
    fill(#F2AC3B);
    arc(gdzieJest.x, gdzieJest.y, 50, 50, predkosc.heading()-PI/1.5, predkosc.heading()+PI/1.5, PIE);
  }
}
