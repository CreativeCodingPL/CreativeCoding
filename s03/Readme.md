# Sezon 03 - zmienne, warunki, biblioteki, narzędzia


### Processing
- użycie zmiennych typu `float`
- użycie zmiennych typu `frameCount`, `width`, `height`, `mouseX` i `mouseY`


```Processing
float pozycja = 150;
point(pozycja, 150);
pozycja = pozycja + 30;
point(pozycja, 150);

point(frameCount, height * 0.33);
point(width - frameCount, height * 0.66);

```


### zmienne wbudowane w Procesing:

- `frameCount` to zmienna licznik klatek, po każdej klatce animacji zwiększa się o jeden.
- `mouseX` to aktualna pozycja kursora myszy w poziomie.
- `mouseY` to aktualna pozycja kursora myszy w pionie.
- `width` to długość okna (w poziomie, inaczej liczba kolumn).
- `height` to wysokość okna (w pionie, inaczej liczba rzędów).


### instrukcje:
- `if()` sprawdza podany warunek (lub warunki)
- `&&` logiczne `i`, w przypadku gdy chcemy sprawdzić więcej warunków
- `||` logiczne `lub`, w przypadku gdy chcemy sprawdzić więcej warunków
- `keyPressed()` obsługa zdarzeń klawiatury, reagowanie na wciśnięcie klawisza


Obsługa zdarzeń klawiatury i sprawdzenie warunków
```Processing
boolean czyPokazac;

void draw() {
  if (czyPokazac) {
    // tutaj to, co ma być pokazane
  }
}

void keyPressed() {
  czyPokazac = !czyPokazac;
}

```

Użycie warunków logicznych `||` (lub)
```Processing
boolean czyPokazac;

void draw() {
  if ( (mouseY < 150) || (mouseY > 350) ) {
    // tutaj to, co ma być pokazane
  }
}
```


### Układ współrzędnych i podstawowe kształty

Opis sposobu działania układu współrzędnych i aspekty dotyczące podstawowych kształtów
[Układ współrzędnych i podstawowe kształty](https://processing.org/tutorials/drawing/)

Podstawowe kształty
- `point(x, y)`
- `line(x1, y1, x2, y2)`
- `rect(x, y, width, height)`
- `ellipse(x, y, width, height)`


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