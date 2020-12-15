# Wystawa plakatu generatywnego

WIĘKSZA praca własna. Podsumowanie waszych umiejętności po ukończeniu warsztatu Creative Coding. 
Co Was zainspirowało? Jakie nowe pomysły pojawiły się po tym warsztacie?

Prace będą wystawione w aluminiowych ramach 50cm x 70 cm. Ponieważ plakaty mają być generatywne, to prosimy o udokumentowanie w postaci wideo procesu generowania kodem.

## Wymagania do pracy
- Nieprzekraczalny termin oddania pracy to **19.01.21**.

- Praca powinna składać się z dwóch części:

1. Plakat lub grafika generatywna dostarczona w pliku PDF do druku w formacie B2 do zamieszczenia w ramkach.
2. Wideo w formacie MP4 (biblioteka VideoExport) pokazujące proces generowania grafiki/plakatu kodem. Może to być seria zdjęć pokazujących wiele wariantów wygenerowanych kodem, z których jeden został wybrany na plakat/grafikę. Jeżeli grafika powstaje w wyniku symulacji zjawiska (np. ruch stada, wzrost drzewa, rozwój automatu komórkowego itp.) procesu ciągłego budującego końcową grafikę, wtedy wideo powinno zawierać zapis tego procesu. I mogą to też być warianty mieszane np. ciąg zdjęć wariantów przepleciony z poszukiwaniem przez uruchamianie symulacji z różnymi parametrami, aż w końcu pojawi się ten upragniony efekt ;). Super wygląda to np. tu: [Growing Data - Berlin](https://vimeo.com/17142501)

## Inspiracje do pracy końcowej
- [Simulation and Nature in Design](http://n-e-r-v-o-u-s.com/education/simulation/index.php)
- [Generative Design](http://www.generative-gestaltung.de/code)
- [Studio A N F](http://anf.nu)
- [Generative Art](https://youtu.be/cKzK88y3o1Q)
- [Casey Reas (współtwórca Processing)](http://www.bitforms.com/artists/reas)
- [Casey Reas - home page (współtwórca Processing)](http://reas.com)
- [onformative](http://www.onformative.com/work/actelion-imagery-wizard/)
- [Quayola](http://www.bitforms.com/artists/quayola)
- [Quayola - home page](http://www.quayola.com)
- [Canogar](http://www.bitforms.com/artists/canogar)
- [OpenProcessing](https://www.openprocessing.org)
- [Marcin Ignac - home page](http://marcinignac.com)
- [Marcin Ignac](http://variable.io)
- [Joanie Lemercier](http://joanielemercier.com)
- [Marius Watz](http://mariuswatz.com)
- [Daniel Shiffman](http://shiffman.net)
- [Anders Hoff](http://inconvergent.net)
- [Joshua Davis](http://www.joshuadavis.com)
- [Reza Ali](http://www.syedrezaali.com)
- [Generative Typography by Kyuha Shim](https://vimeo.com/138371379)

### Użycie biblioteki - VideoExport

Kompletne rozwiązanie do nagrywania, konwertowania i strumieniowania audio i wideo.
- [FFmpeg](http://ffmpeg.org)

Skompilowana wersja dla komputerów Mac
- [ffmpeg-mac64](ffmpeg-mac64)

Skompilowana wersja dla komputerów Windows
- [ffmpeg-win64](ffmpeg-win64)


Użycie biblioteki VideoExport
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