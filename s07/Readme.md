# Sezon 07 - funkcje, obiekty


## Processing
- użycie [funkcji](#funkcja)
- użycie [obiektów](#obiekt)


### Funkcja

`Funkcja` to wydzielona część programu, która przetwarza argumenty i ewentualnie zwraca wartość, która następnie może być wykorzystana, jako argument w innych działaniach lub funkcjach. Funkcja może posiadać własne zmienne lokalne. 

####  Definicja
```Processing
typ nazwa_funkcji(parametry) {
  instrukcje
  return wartość
}

```

#### Opis
Zwracana `wartość` musi mieć taki sam `typ` danych, jak zdefiniowano w deklaracji funkcji.
Funkcje zadeklarowane z `void` nie mogą zwracać `wartości`.

#### Parametry
- `typ` boolean, byte, char, int, float, String, boolean[], byte[], char[], int[], float[] lub String[]
- `nazwa_funkcji` dowolna nazwa, która powinna spełniać takie same wymogi jak nazwy zmiennych (czyli pierwszym znakiem może być litera lub znak podkreślenia; kolejne znaki nazwy mogą być literą, cyfrą lub znakiem podkreślenia; nazwa nie może też być zarezerwowanym słowem kluczowym).
- `parametry` jest to lista nazw parametrów, rozdzielona przecinkami; lista parametrów może być pusta (pomiędzy nawiasami okrągłymi wtedy nic nie ma).
- `instrukcje` wewnątrz funkcji może być umieszczona dowolna liczba instrukcji.
- `wartość` musi mieć ten sam typ danych, co parametr `typ`
- `nawiasy klamrowe` są obowiązkowe i nie można ich pominąć, nawet jeżeli funkcja zawiera tylko jedną instrukcję (lub nawet nie zawiera żadnej instrukcji).
- funkcja może `zwracać wartość` – stosuje się wtedy słowo kluczowe `return`.


### Obiekt

`Obiekt` jest złożoną strukturą danych. Oznacza to, że wewnątrz niego można przechowywać więcej niż jedną wartość. Zastosowanie obiektów pomaga napisać bardziej czytelny kod. 

#### Definicja
```Processing
class nazwa_obiektu {
  instrukcje
}

```

#### Opis
Obiekt jest połączeniem `danych` i `funkcji` (metod).

#### Parametry
- `nazwa_obiektu` dowolna nazwa, która powinna spełniać takie same wymogi jak nazwy zmiennych (czyli pierwszym znakiem może być litera lub znak podkreślenia; kolejne znaki nazwy mogą być literą, cyfrą lub znakiem podkreślenia; nazwa nie może też być zarezerwowanym słowem kluczowym). Pierwsza litera nazwy obiektu jest zwykle pisana wielką literą, aby oddzielić ją od innych rodzajów zmiennych.
- `instrukcje` wewnątrz obiektu może być umieszczona dowolna liczba instrukcji.
- `nawiasy klamrowe` są obowiązkowe i nie można ich pominąć, nawet jeżeli obiekt zawiera tylko jedną instrukcję (lub nawet nie zawiera żadnej instrukcji).


## Ekrany

Użycie funkcji do rysowania emoji.

![Emotikon](e01_emoticon/e01_emoticon.png)

Użycie obiektu w celu prostej symulacji.

![Cząsteczki](e06_rozchodzenie_sie/particles.png)

Użycie obiektu w celu złożonej symulacji.

![Rozchodzenie się](e07_rozchodzenie_sie_plynne/particles.png)