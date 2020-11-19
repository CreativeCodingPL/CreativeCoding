# e13 - zapis animacji w postaci filmu (mp4)

### Kompletne rozwiązanie do nagrywania, konwertowania i strumieniowania audio i wideo.
- ![FFmpeg](http://ffmpeg.org)

Skompilowana wersja dla komputerów Mac
- ![ffmpeg-mac64](ffmpeg-mac64)

Skompilowana wersja dla komputerów Windows
- ![ffmpeg-win64](ffmpeg-win64)


### Użycie biblioteki VideoExport

```Processing
import com.hamoid.*;
VideoExport videoExport;

void setup() {
  videoExport = new VideoExport(this);
  videoExport.startMovie();
}
void draw() {
  // właściwy kod
  videoExport.saveFrame();
}
void keyPressed() {
  videoExport.endMovie();
  exit();
}
```