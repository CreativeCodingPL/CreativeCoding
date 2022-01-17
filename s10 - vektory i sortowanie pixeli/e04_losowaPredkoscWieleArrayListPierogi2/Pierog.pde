class Pierog {
  PVector gdzieJest;
  PVector predkosc;

  Pierog() {
    gdzieJest = new PVector(250, 250);
    predkosc = PVector.random2D(); //predkosc jeden w losowym kierunku
    predkosc.mult(random(0.8,1.2));
  }
  
  void aktualizuj() {
    gdzieJest.add(predkosc);
  }

  void rysuj() {
    strokeWeight(15);
    strokeWeight(0.5);
    fill(#F2AC3B);
    arc(gdzieJest.x, gdzieJest.y, 50, 50, predkosc.heading()-PI/1.5, predkosc.heading()+PI/1.5, PIE);
  }
}
