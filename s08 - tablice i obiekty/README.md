# Sezon 08 - tablice i obiekty

## Processing

- Tablica (Array) czyli uporządkowana kolekcja wartości określonego typu, często wykorzystywana razem z pętlami które pozwalają na wykonanie sekwencyjnych operacji na szeregu definiowanych wartości lub obiektów

```Processing

// inicjalizacja tablicy przez podanie konkretnych wartości
float[] tablica1 = { 0.1, 5.2, 4.4, 10.0 };
int[] tablica2 = { 1, 4, 5, 6, 20 };

// inicjalizacja tablicy przez wypelnienie jejj okreslona iloscia wartości domyślnych ( np. 0 dla int i float )
float[] tablica2 = new float[100];

//analogicznie wyglada inicjalizacja tablicy obiektów
PImage[] obrazki = new PImage[10];
//ale pamietajmy że w przypadku tablicy obiektów nie dochodzi
//do wypelnienia wartościami domyślnymi (bo takowe nie istnieja)
//tylko rezerwujemy pamiec, zawsze zatem musimy zainicjalizowac
//obiekty np. w petli for w setup zanim zaczniemy sie odwoływać do tych obiektów 
//poprzez indeks w tablicy - inaczej bedizemy miec NullPointerException
```

```Processing
// przejscie przez wszystkie elementy w tablicy od indeksu 0 do indeksu
// o wartosci mniejszej o jeden od wlasciwoosci length tablicy
for( int i = 0; i < tablica.length; i++ ){
	println( tablica[i] );
}

```

```Processing
// losowa pozycja w tablicy - indeks musi byc liczba calkowita
tablica[ int( random( tablica.length-1 ) ) ];

```

- Obiekty - możemy definowac wlasne typy zmiennych, tzw. klasy obiektów w celu definicji konkretnego zestawu własciwości i metod, które pozwalają podzielić kod programu na funkcjonalne moduły.

```Processing
// definicja klasy - via tworzenie nowej zakładki w edytorze,
// co w efekcie generuje plik NazwaKlasy.pde w folderze sketcha
class NazwaKlasy {

	// wlasciwosci klasy
	int wlasciwosc1 = 0;
    float wlasciwosc2 = 0;
	
    // konstruktor klasy - wywolujemy go przy tworzeniu nowych obiektow naszej klasy
    NazwaKlasy( int parametr1, float parametr2 ){
    	this.wlasciwosc1 = parametr1;
        this.wlasciwosc2 = parametr2;
    }
    
    // metod klasy
    void metodaKlasy(){
    	println( this.wlasciwosc1 );
    }
    
}
```
```Processing
// deklaracja zmiennej typu naszej klasy
NazwaKlasy mojObiekt;

void setup(){
	// stworzenie nowej instancji typu NazwaKlasy poprzez
    //uzycie slowa kluczowego new i wywolania konstruktora
	mojObiekt = new NazwaKlasy( 2, 5.5 );
}

void draw(){
	mojObiekt.metodaKlasy();
    // printuje 2 w konsoli...
}
```


## Zadanie domowe

Na bazie przykładu "tablicaWlasnychObiektowParticle2" rozbudować kod dodajac nowe właściwości i metody do kalsy Particle w celu dodania ciekawszego ruchu i/lub interakcji z kursorem myszy.

## Materiały pomocnicze

- [O obiektach w Processing](https://processing.org/tutorials/objects)
- [Tablice](https://processing.org/reference/Array.html)
- [Tablica obiektów](https://processing.org/examples/arrayobjects.html)
