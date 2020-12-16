# Sezon 08 - Rekurencja i fraktale

## Processing

- Rekurencja - czyli funkcja wywołująca dama siebie. Pamiętajmy o instrukcji warunkowej wewnatrz takiej funkcji która zapobiega nieskończonemy wywoływaniu, co znieuchronni zawiesi program.

- Fraktale - geometryczny obiekt charakteryzujacy się "samopodobieństwem" - czyli niezależnie od stopnia powiekszenia powtarza się ten sam wzór, musi tez mieć nietrywialną strukturę - bo np. zwykły odcinek jest samopodobny ale fraktalem nie jest.

- `pushMatrix()` wywolujemy przed sekwencja funkcji odpowiadajacych za transformacje

- `popMatrix()` wywolujemy zawsze na koniec bloku kodu rozpoczetego od `pushMatrix` - powoduje zresetowanie ustawien transformacji, wiec wszystko dalej rysuje sie normalnie
- `rotate(), translate(), scale()` - funkcje opdowiadajace za modyfikacje ukladu współrzędnych - zachoiwuja sie tak jak `fill()`, `stroke()` etc - tzn. wplywaja na wszystkie kolejne operacje rysowania


## Materiały pomocnicze

- [Benoit Mandelbrot - twórca fraktali](https://en.wikipedia.org/wiki/Benoit_Mandelbrot)
- [Nature of Code - intro o fraktalach](https://www.youtube.com/watch?v=-wiverLQl1Q)
- [Transformacje 2D - tutorial](https://processing.org/tutorials/transform2d/)


## Zadanie domowe

Wygenerować las skladajacy sie z fraktalnych drzew i wzbogacic funkcje rysujaca drzewa o kolor, zmienna grubosc galezi, randomizacje kątów etc.