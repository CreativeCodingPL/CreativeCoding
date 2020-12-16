# Sezon 04 - pętle i grafika rastrowa
- `fullScreen();` bez okna na całym ekranie
- `width`, `height` wymiary okna lub ekranu
- Losowość powtórka
- `saveFrame()` powtórka
- **Tools > Movie Maker** tworzenie wideo z klatek animacji
- Typy zmiennych `int`, `PImage`
- Wykonanie warunkowe powtórka `if`
- Pętla, czyli powtarzanie określoną liczbę razy

```Processing
for(int i = 0; i < 10; i++) point(i*30, 250); 
//rysuje 10 punktów w poziomie na wysokości 250 w odstępach 30
```

- Pętla w pętli (fachowo *zagnieżdżanie pętli*), czyli np. grafika w dwóch wymiarach

```Processing
for(int i = 0; i < width; i+=20) 
	for(int j = 0; j < height; i+=40) 
		point(i, j);
//rysuje punkty na całym ekranie
//w odstępach 20 w poziomie i 40 w pionie
```

- Noise powtórka 
- `i++` zwiększanie wartości zmiennej o jeden 
- Ruch browna 
- `loadImage();` ładowanie plikiu graficznego do zmiennej typu `PImage`
- `“czarna dziura.jpg”` to jest `String` czyli dowolny ciąg znaków np. nazwa pliku
- `image()` rysowanie grafiki
- PImage to obiekt, można z nim rozmawiać przez kropkę np. `dziura.width` pyta obraz czarnej dziury jaką ma szerokość
- `get(,);` pobieranie koloru konkretnego piksela
- `settings()` czyli jak ustawić rozmiary okna na postawie zmiennych
- `color` typ zmiennej do przechowywania koloru
- `map(,,,);` mapowanie zakresu wartości na inny zakres wartości
- `constrain(,,);` ograniczanie wartości do zakresu

## Zadanie domowe
Proszę zrobić kod przetwarzający obraz z pliku `.png`, `.jpg` lub `.tiff`. Preferowany kod nakładający na wgrany obraz dynamiczną strukturę. Dobrą inspiracją może być przykład [`e21_grafikaRastrowa02Efekty07v04WOW`](https://github.com/CreativeCodingPL/CreativeCoding/blob/2019/s04/e21_grafikaRastrowa02Efekty07v04WOW/e21_grafikaRastrowa02Efekty07v04WOW.pde).

## Materiały pomocnicze
- [For Loop - Processing Tutorial](https://youtu.be/h4ApLHe8tbk)
- [If, Else If, Else - Processing Tutorial](https://youtu.be/mVq7Ms01RjA)
- [Images and Pixels](https://processing.org/tutorials/pixels/)
- [Noise i ruch browna - book](http://natureofcode.com/book/introduction/)
- [Noise i ruch browna - wiedo](https://vimeo.com/58492076)

