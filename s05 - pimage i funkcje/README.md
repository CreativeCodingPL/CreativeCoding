# Sezon 05 - PImage, funkcje

## Processing

- PImage to typ zmiennej ( vel klasa obiektu ) odpowiedzialnej za obsługę bitmap

```Processing
PImage obrazek;
```

- Ładowanie obrazka (musi być w podkatalogu  data):

```Processing
PImage obrazek;
void setup(){
	size(800,600);
    obrazek = loadImage("nazwaplikuobrazka.png");
}
```

- Wyświetlanie bitmapy:

```Processing

void draw(){
	// podstawowa wersja funkcji image - nazwa zmiennej typu PImage i pozycja x, y
	image( obrazek, 100, 100 );
    
    // wersja bardziej rozbudowana ustawiajaca wymiary obrazka:
    image( obrazek, 100, 100, 300, 300 );
    
    // jeśli chcemy skalować proporcjonalnie to możemy wykorzysztać właściwość obiektu PImage takie jak width i height:
    image( obrazek, 100, 100, obrazek.width/2, obrazek.height/2 );
}
```

- Własne funkcje:

```Processing

// definicja własnej funcjcji nie zwracajacej żadnej wartości - tak jak wbudowane metody takie jak noStroke() czy fill() etc...
void mojaFunkcaKtoraNicNieZwraca( int argument1, float argument2){
	// tu coś robimy z argument1 i argument2
}


// definicja własnej funckcji zwracajacej wartość typu float:
float dodajDwieLiczby( float liczba1, float liczba2){
	return liczba1 + liczba2
}

```

### instrukcje: 

- `image( zmiennaTypuPImage, pozycjaX, pozycjaY)` rysuje obrazek - inne warianty vide wyżej ^. 
- `tint( 255, 127)` pozwala zabarwić i/lub zmienić przeźroczystość rysowanej bitmapy - nalezy wywołać przed metodą image której ma dotyczyć - funkca ta przyjmuje od 2 do 4 argumentów vide dokumentacja^. 
- `blenMode( ADD ) zmienia tryp mieszania barw - tu na addytywny ale jest sporo wariantów - vide dokumentacja`


## Zadanie domowe

Zmodyfikować / rozbudować przykład z "włochatmym JFK" - dodać interakcje z myszką, wykorzysytać inne kształty wektorowe (PShape) i inne bitmapy oraz dodać funkcję zapisywania do pdf po wciśnieciu klawisza na klawiaturze.

## Materiały pomocnicze

- [PImage](https://processing.org/reference/PImage.html)
- [blendMode](https://processing.org/reference/blendMode_.html)
- [tint](https://processing.org/reference/tint_.html)
- [Funkcje](https://processing.org/examples/functions.html)
- [return](https://processing.org/reference/return.html)






