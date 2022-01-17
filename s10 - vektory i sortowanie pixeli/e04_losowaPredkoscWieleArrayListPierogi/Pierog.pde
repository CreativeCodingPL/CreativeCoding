class Pierog {
  PVector gdzieJest;
  PVector predkosc;

  Pierog() {
    gdzieJest = new PVector(250, 250);
    predkosc = PVector.random2D(); //predkosc jeden w losowym kierunku
  }
  
  void aktualizuj() {
    gdzieJest.add(predkosc);
  }

  void rysuj() {
    strokeWeight(15);
    stroke(0, 100);
    point(gdzieJest.x, gdzieJest.y);
  }
}
