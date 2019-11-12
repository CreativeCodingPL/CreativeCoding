
void setup() {
   size(500, 500);
   background(255);
   noFill();
   rectMode(CENTER);
   frameRate(1);
}

void draw() {
  background(255);
  twarz(250, 250, 400);
  twarz(50, 70, 100);
  twarz(400, 400, 130);
}

void obrysTwarzy(float x, float y, float wysokosc) {
   float szerokosc = wysokosc*3.0/5.0;
   ellipse(x,y,szerokosc, wysokosc);
   uszy(x,y, szerokosc);
}

void oko(float x, float y, float rozmiar) {
   ellipse(x,y,rozmiar,rozmiar*0.5);
   ellipse(x,y,rozmiar*0.4,rozmiar*0.4);
}

void oczy(float x, float y, float rozstaw) {
   oko(x-rozstaw*2.0/3.0, y, rozstaw*random(0.8,1.2));
   oko(x+rozstaw*2.0/3.0, y, rozstaw*random(0.8,1.2));
}

void ucho(float x, float y, float wysokosc) {
   rect(x, y, wysokosc*0.2, wysokosc);
}

void uszy(float x, float y, float rozstaw) {
   ucho(x-rozstaw/2, y, rozstaw/2);
   ucho(x+rozstaw/2, y, rozstaw/2);
}

void twarz(float x, float y, float wysokosc) {
  obrysTwarzy(x,y,wysokosc);
  oczy(x, y-wysokosc*0.1, wysokosc/5.0);
}
