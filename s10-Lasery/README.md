# Sezon 03 - Grafika rastrowa

## Processing
- biblioteka HPGLGraphics - This library implements HPGL (Hewlett-Packard Graphics Language) file creation from Processing sketches. It works in much the same way as the PDF Export and DXF Export libraries bundled with Processing.
- HPGLGraphics laser = (HPGLGraphics) createGraphics(width, height, HPGLGraphics.HPGL) - tworzy zmienna graficzna do eksportu do lasera.
- .setPaperSize("A4") - ustala domyślny wymiar przestrzeni roboczej
- .setPath("output.plt") - ustala nazwe pliku gdzie zostaną zapisane dane do importu do lasera
- beginRecord() - rozpoczyna zapis danych do pliku lasera
- endRecord() - kończy zapis danych 

## Zadanie domowe
Brak

## Materiały pomocnicze
- [HPGLGraphics opis biblioteki i przykłady](http://ciaron.net/HPGLGraphics/)
- [Hewlett-Packard Graphics Language](https://en.wikipedia.org/wiki/HP-GL)
- [Nasz laser](http://www.techsol.com.pl/oferta/plotery-laserowe-co2//22-laser-900vn.html)
- [LaserCut 5.3 Software Complete Show](https://vimeo.com/146985887)



