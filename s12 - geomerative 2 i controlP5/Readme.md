# Sezon 12 - Geomerative pt. 2 + ControlP5

Bardzie jzaawansowany przykład - piszemy narzędzie do deformacji kształtów liter + szybkie wprowadzenie biblkioteki ControlP5 pozwalajacej np. podpinac zmienne pod suwaki.

## Poruszone zagadnienia:

- `beginContour() i endContour()`
- alternatywny, skrótowy zapis instrukcji warunkowej `if(warunek) instrukcja();`
- troche wiecej o stycznych / normalnych i operacje na wektorach
- `pushMatrix() i popMatrix()` do zapisywania i czyszczenia stanu transformacji
- Trochę operacji na wektorach za pomoca obiektu `RPopint` (odpowiednik `PVector`)
- Bibloteka ControlP5

### PROCESSING

#### `beginContour() i endContour()`

Kształty rysowane w processing moga skladac sie z ścieżek - niektore z nich mogą "wycinać" inne ścieżki - tak jak np. w przypadku litery "O" czy "B". Aby poprawnie narysowac takie kształty musimy sięgnac po metody `beginContour() i endContour()` 

Przykałd użycia:

Tutaj rusujemy kwadrat z kwadratowym wycieciem,
vide -> https://processing.org/reference/beginContour_.html

```Processing
beginShape();
// zew. kwadrat...
vertex(-160, -160);
vertex(160, -160);
vertex(160, 160);
vertex(-160, 160);
//wewnetrzny kwadrat...
beginContour();
vertex(-80, -80);
vertex(-80, 80);
vertex(80, 80);
vertex(80, -80);
endContour();
endShape(CLOSE)
```

#### `pushMatrix() i popMatrix()`

Para metod kotore pozwalaja zapisac i przywrocic stan ukladu wspolrzednych dokonywanych za pomoca takich metod jak np. `translate(), rotate(), scale()` Zamkniecie tych operacji miedzy `pushMatrix() i popMatrix()` pozawla poniekąd odizlowoac wprowadzone transformacje ukladu współrzędnych i np. uwzgledniac transformacje tylko dla wybranych komend rysujacych takich jak `ellipse()` etc.

Przykałd użycia (vide sketch pushIpopMatrix) :

```Processing
   // zaczynamy rejestracje wszelklich globalnych transformacji
   // ukladu wspolrzednych
   pushMatrix();
   
   // translacja docentrum okna
   translate( width/2, height/2 );
   // obrot ukladu wspolrzednych o 45 stopni
   rotate( radians(45) );
   
   // elipse rysujemy w pozycji 0,0 ale poniewaz
   // zrobilismy translate to to 0,0 jest teraz na srodku ekranu
   // oraz - dzieki rotacji ukladu elipsa rysuje sie nam pod kątem
   // cos czego nie mozemy zrobic za pomoca parametrow tej metody...
   ellipse( 0, 0, 100, 50 );
   
   // resetujemy transofrmacje
   popMatrix();
   
   // kolejna elipsa "rysuje sie" w domyślny sposób
   // bez rotacji i z poczatkiem ukladu w gornym lewym rogu
   ellipse( 100, 100, 100, 50 );
```

#### ControlP5

Biblioteka pozwalajaca tworzyc własne GUI w sketch'ach processing.
Jest dość rozbudowana - vide katalog z przykładami dostępny po zainstalowaniu 
biblkioteki, jednak w najprostszym wariancie pozwala szybko podpiąć globalne
zmienne (zadeklarowane poza setup/ draw) do suwaków.

Przykałd użycia - vide sketch controlP5



## Materiały pomocnicze

- [ControlP5](https://sojamo.de/libraries/controlP5/)
- [O ukladzie wspolrzednych w Processing](https://processing.org/tutorials/coordinatesystemandshapes)
- [O transformacjach ukladu](https://processing.org/tutorials/transform2d)
- [Normalizacja wektora tzw. unit vector](https://www.youtube.com/watch?v=ttz05d8DSOs)

## Praca domowa
Zmodyfikować / rozbudować zachowanie sketcha letterDistortion łącząc wszystko to czego nauczylismy się o Geomerative. Ponad to dodać więcej kontrolek z wykorzystaniem ControlP5 - warto też spr. zajrzeć do przykłądów i dodać jakiś inny typ poza suwakiem.