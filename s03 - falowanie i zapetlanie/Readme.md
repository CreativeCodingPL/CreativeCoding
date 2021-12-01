# Sezon 03 - falowanie i zapętlanie

## Processing

- `for` czyli pętla inaczej niż `while()`, krócej dla leniwych. Standard w większości języków.

```Processing
for(int x = 0; x < 10; x++) point(x*30, 250); 
//rysuje 10 punktów w poziomie na wysokości 250 w odstępach 30
```

- Pętla w pętli (fachowo *zagnieżdżanie pętli*), czyli np. grafika w dwóch wymiarach

```Processing
for(int x = 0; x < width; x = x + 20) 
	for(int y = 0; y < height; y = y + 40) 
		point(i, j);
//rysuje punkty na całym ekranie
//w odstępach 20 w poziomie i 40 w pionie
```

- `x++` zwiększanie wartości zmiennej o jeden 


### zmienne wbudowane w procesing:

 - `frameRate` rzeczywista liczb klatek na sekundę, bo jak skomplikowane obliczenia to może być ich mniej niż zakładaliśmy :)
 
### typy: 

- tu nic nowego, czyli: int, void, float i color

### instrukcje: 

- `set(x, y, c);` ustawia w miejscu x,y kolor pixela na c. Dużo szybciej działa niż rysowanie punktu o średnicy 1. 
- `colorMode(HSB, 100);` tak jak colorMode i jeszcze zmienia zakres wartości składowych koloru z domyślnego 0-255 na 0-100.
- `println()` wydruk tego co podamy w nawiasie do konsoli (czarny fragment okna na dole) 
- `sin(k);` - wartość sinusa dla konta k wyrażonego w radianach (wielokrotność liczby PI, gdzie PI = 180 stopni)
- `cos(k);` jak powyżej dla cosinusa. 
- `noise(x,y,z)` jak noise z sezonu 02, ale w wersji 3D. Oglądaliśmy chmury plasterek po plasterku.  
`noiseDetail(3);` ile nosiu w noise. Najprościej tłumacząc jak złożony jest noise, czym większa liczba tym więcej składowych nakładających się na siebie (duży ruch a na nim mniejszy a na nim jeszcze mniejszy itd.)

## Zadanie domowe

Grafika wygenerowana za pomocą zapętlania w zapętleniu (for for) falowania (sin/cos) i szumu wielowymiarowego (noise(x,y,z))

## Materiały pomocnicze

- [Beautiful Trigonometry - sin, cos, ale też tan stan - polecam](https://youtu.be/snHKEpCv0Hk)
- [Noise 3D](https://processing.org/examples/noise3d.html)

## Ekrany

Falowanie sin i cos.

![Falowanie1](f1.png)
![Falowanie2](f2.png)
![Falowanie3](f3.png)
![Falowanie4](f4.png)
![Falowanie5](f5.png)

Noise

![Noise1](n1.png)
![Noise2](n2.png)

Noise z falowaniem

![Noise i falowanie1](nf1.png)
![Noise i falowanie2](nf2.png)
![Noise i falowanie3](nf3.png)
![Noise i falowanie4](nf4.png)
![Noise i falowanie5](nf5.png)

