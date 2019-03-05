# Sezon 14 - geomerative

## Processing
- Geomerative: importowanie biblioteki
- Geommerative: inicjalizacja ```RG.init()```
- Geomerative: podstawowe typy obiektów - RShape, RPoint
- Geomerative: tworzenie kształtów z tekstu:
```RG.getText("Hello world!", "FreeSans.ttf", 72, CENTER);```
- Geomerative: znjdowanie centrum kształtu i rotacja ```napis.children[0].rotate(PI/20, napis.children[0].getCenter());```
- Geomerative: znajdowanie punktów na orysach kształtów liter (RShape) ```points = napis.getPoints()```
- Geomerative: rysowanie linii na podstawie punktów, różne warianty
- Dodatkowo: ```noise()``
- Dodatkowo: czym jest specjalna wartość ```null``` i kiedy/jak go używać

## Zadanie domowe
Na podstawie przerabainaych przykładów zrobić kompozycję typograficzną. Wykorzystać obrysy liter i punkty jako źródło do generowania nowych form.

## Materiały pomocnicze
- [DOKUMENTACJA GEOMERATIVE](http://www.ricardmarxer.com/geomerative/documentation)
- [NOISE wyjaśniony przez Shiffmana](https://www.youtube.com/watch?v=8ZEMLCnn8v0)
- [TUTORIAL GEOMERATIVE](http://freeartbureau.org/fab_activity/geomerative-tutorial-part-1/)
- [DOKUMENTACJA PROCESSING -  null](https://processing.org/reference/null.html)



## Inspiracje
- https://pl.pinterest.com/jkozniewski/generotype/