# Sezon 04 - import, export, PDF, SVG, vertex

## Processing

- importowanie biblkioteki pozwalajacej na export pdf, by korzystać z mzliowości eksportowania np. via meotda `beginRecord` nalzy najpierw zawsze zaimportować wbudowaną bibliotekę PDF:

```Processing
import processing.pdf.*;
```

- Rysowanie bardziej złożonych krzywych:

```Processing
beginShape();
vertex(100,50);
vertex(150,80);
vertex(200,100);
//etc.
endShape();
// opcjonalnie endShape(CLOSE); - zawsze "domyka" kształt odcinkiem miedzy pierwszym a ostatnim punktem
```



### zmienne wbudowane w procesing:

 - `frameCount` - aktualny numer klatki, mzmna wykorzystać do animacji, np. przekazujac jako jeden z argumentów metody `noise()`
 

### instrukcje: 

- `map(val, originalMin, originalMax, destinationMin, destinationMax);` konwertuje wartość z jednego zakresu na drugi. 
- `beginShape(); endShape()` para metod pozwalajacych na rysowanie bardziej złożonych krzywych za pomocą `vertex(x,y) lub curveVertex(x,y)`
- `beginRecord(PDF, "filename.pdf"); endRecord()` para metod inicjujaca i kończąca "nagrywanie" instrukcji rysowania do pliku PDF
- `loadShape( "filename.svg" )` metodap ozwalajaca wczytać plik SVG - metoda zwraca obiekt typu `PShape`


## Zadanie domowe

Na nazie przykładu z vertexBlob zrobić własną wariację z noise i vertex / curveVertex w połączaeniu z exportem do pliku PDF

## Materiały pomocnicze

- [PShape](https://processing.org/reference/PShape.html)
- [Różne sposoby na export PDF](https://processing.org/reference/libraries/pdf/index.html)
- [O krzywych w Processing](https://processing.org/tutorials/curves)




