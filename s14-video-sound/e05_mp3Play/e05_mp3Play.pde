
import processing.sound.*;

SoundFile muza;

void setup() {
    size(640,360);
    background(255);
        
    //Load a soundfile
    muza = new SoundFile(this, "vibraphon.aiff");


    muza.loop();
}      


void draw() {
  
}