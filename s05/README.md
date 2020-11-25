# Sezon 05 - tablice i sortowanie pikseli

## Processing

### Odrobaczanie
- Inaczej debugowanie. 
- Pierwszy bug :)

[Bug wiki](https://pl.wikipedia.org/wiki/Błąd_(informatyka))

![](https://upload.wikimedia.org/wikipedia/commons/f/ff/First_Computer_Bug%2C_1945.jpg)

- Debugowanie w Processing

![](bug.png)

- Podczas debugowania można podglądać zawartość zmiennych

![](podglad.png)

### Tablice
- Tablice, dzięki nim możemy przechowywać w jednej zmiennej więcej niż jeden element np. wiele liczb, kolorów itd.
- `[2]` indeks tablicy, tak mówimy z której komórki chcemy pobrać wartość
- Pierwszy elementy w tablicy ma indeks zero `[0]`

```Processing
float[] liczby = {23, 11, 4, 7, 2, 8} 
//tablica zawierające liczy całkowite, 
//23 na pozycji 0,
//11 na pozycji 1 itd. 
//aż do 8 na pozycji 5. 
//W sumie 6 liczb.
```

- `.length` tak pytamy o liczbę elementów w tablicy, albo inaczej mówiąc długość tablicy.
- `x = muchy[3]` - pobieranie elementu z tablicy, tu w `x` umieszczam wartość z `3` pozycji w tablicy `muchy`

### Składowe koloru pobierane ze zmiennej typu `color`
- `hue()`, `saturation()`, `brightness()` rozkładanie koloru na składowe HSB
- `red()`, `blue()`, `green()` rozkładanie koloru na składowe RGB
- `alpha()` składowa przezroczystości

### Sortowanie pikseli
- Sortowanie pikseli, czyli układanie pikseli w obrazie w innej kolejności niż oryginalna. Tu np. zamiana miejscami sąsiednich pikseli

```Processing
  peppa.loadPixels();
  for (int i = 1; i < peppa.pixels.length; i++) {
    color c = peppa.pixels[i];
    peppa.pixels[i] = peppa.pixels[i-1];
    peppa.pixels[i-1] = c;
  }
  peppa.updatePixels();
```

 - Zamiana miejscami kolorów dwóch pikseli np. dwóch sąsiednich pikseli. 

```Processing
color c = pixels[i];
pixels[i] = pixels[i-1];
pixels[i-1] = c;  
```

- `pixels[]` tablica pikseli w grafice rastrowej
- `loadPixels()` ładowanie tablicy z grafiki
- `updatePixdls()` aktualizowanie grafik na podstawie tablicy

## Zadanie domowe
Stwórzcie własny efekt wizualny sortując pixele. Udanego sortowania!

## Materiały pomocnicze
- [Pixel Sorting](http://satyarth.me/articles/pixel-sorting/)
- [Images and Pixels](https://processing.org/tutorials/pixels/)
- [Bubble sort](https://en.wikipedia.org/wiki/Bubble_sort)
- [Sorting Algorithms Animations](https://www.toptal.com/developers/sorting-algorithms)

## Ekrany 

Sortowanie pikseli - średnia sąsiednich kolorów. 

![](e11_SortowaniePikseli01.png)

Sortowanie pikseli - zamiana sąsiednich pikseli na podstawie progowej wartości barwy (hue) 

![](e12_SortowaniePikseli01HUE.png)

Sortowanie pikseli - mniejszy kolor z dwóch końców tablicy 

![](e13_SortowaniePiksel_min.png)

Sortowanie pikseli - większy kolor z dwóch końców tablicy 

![](e14_SortowaniePiksel_max.png)

Sortowanie pikseli - zamiana miejscami (swap) sąsiednich pikseli 

![](e15_SortowaniePiksel_swap.png)

Sortowanie pikseli - zamiana miejscami (swap) pikseli w losowym odstępie   

![](e17_SortowaniePiksel_swap_rand_odstep.png)

Sortowanie pikseli - zamiana miejscami (swap) pikseli z dwóch końców tablicy na podstawie porównania ich barwy

![](e19_SortowaniePiksel_if_hue.png)



