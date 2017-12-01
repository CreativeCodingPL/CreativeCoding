import processing.video.*;

Movie film1;
Movie film2;
Movie film3;
Movie film4;

void setup() {
  size(640, 360);
  background(0);

  film1 = new Movie(this, "transit.mov");
  film2 = new Movie(this, "transit.mov");
  film3 = new Movie(this, "transit.mov");
  film4 = new Movie(this, "transit.mov");
  film1.loop();
  film1.jump(film1.duration()*0.1);
  film1.speed(1.0);
  film2.loop();
  film2.jump(film2.duration()*0.2);
  film2.speed(1.35);
  film3.loop();
  film3.jump(film3.duration()*0.3);
  film3.speed(1.7);
  film4.loop();
  film4.jump(film4.duration()*0.4);
  film4.speed(2.0);
}

void draw() {

  if (film1.available()) {
    film1.read();
    image(film1, 0, 0, film1.width*0.5, film1.height*0.5);
  }  
  if (film2.available()) {
    film2.read();
    image(film2, width/2, 0, film2.width*0.5, film2.height*0.5);
  }  
  if (film3.available()) {
    film3.read();
    image(film3, 0, height/2, film3.width*0.5, film3.height*0.5);
  }  
  if (film4.available()) {
    film4.read();
    image(film4, width/2, height/2, film4.width*0.5, film4.height*0.5);
  }  

}