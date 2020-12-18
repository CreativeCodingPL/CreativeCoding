# Sezon 12 - Geomerative

## Processing

Geomerative to bibilioteka pozwalajajaca na bardziej zaawansowane operacje na krzywych. Umożliwia wydobycie obwiedni z liter załadowango fonta ttf, łaczenie / odejmowanie kształtów, cięcie ścieżek etc.

Podstawowe obiekty biblkioteki to:

- `RShape` - nieco podbne do PShape, zawiera dane o kształcie ale moze również gromadzić inne obiekty `RShape` pełniąc rolę kontenera na grupę wielu kształtów, dostepnych via tablica `children`
- `RPath` - to typ zmiennej przechowujacej info o ścieżce, w przyopadku liter zwykle jest jedna, dwie lub trzy ścieżki w zależnoci od kształtu litery - np. "H" ma jedną ścieżkę a "O" już dwie - jedna w środku, druga na zewnątrz..
- `RPoint` - podobny do PVector
- `RG` - globalny obiekt oferujacy np. funckje generujace kształt na bazie tekstu a przedewszystkim metode `init` potrzebna do inicjalizacji biblioteki w `setup`

## Zadanie domowe

Wykorzystujac wiedze z zajeć stworzyć generatywną, animowaną grafikę polegajacą na przekształceniu liter - transformacje i/lub łączenie punktów, rzeczy wyrastajace z liter etc.

## Materiały dodatkowe

- [Definicja stycznej](https://pl.wikipedia.org/wiki/Styczna)
- [Geomerative - dokumentacja](http://www.ricardmarxer.com/geomerative/documentation/index.html)

