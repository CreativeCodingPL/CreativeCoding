# Sezon 02 - Podstawy

## Processing
- przezroczystość
```Processing
background(255); //zamazanie całego ekranu kolorem 255 (biały)
fill(100,23,15,30); //ostatnia liczba to przezroczystość
stroke(120); //kolor pisaka szary
```
- ```Processing
void setup() 
{
  //tu piszemy co ma być raz na starcie programu
}
void draw() {
  //tu co ma się powtarzać z prędkością frameRate
}
```
- ```Processing
void mousePressed() { //tu co ma się stać jak naciśniety klawisz myszy }
void keyPressed() {…}
```
- zmienne 
```Processing
int pozycjaX = 250;
float waga = 15.3; 
```
- typy: `float` `int` `void`
- round(), floor(), ceil()
- lerpColor()
- saveFrame()
- random()
- noise()
- println()
- komentarze

## Zadanie domowe
Powtórzyć wszystkie instrukcje

## Materiały pomocnicze
- [Dokumentacja Processing](https://processing.org/reference)

## Ekrany
### przezroczystość RGBA - fill(R, G, B, A)
![](przezroczystosc.png)
### rysowanie mouseX, mouseY, pmouseX, pmouseY
![](rysowanie.png)
### szum = noise(frameCount/10.0)
![](rysowanie_noise.png)

