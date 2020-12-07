void setup() {
  
  Particle czastka = new Particle();
  // wartość domyślna `speed`
  println(czastka.get_speed());  // 0.5
  
  // zmiana wartości domyślnej `speed`
  czastka.set_speed(2);
  println(czastka.get_speed()); // 2.0
}

void draw() {
}
