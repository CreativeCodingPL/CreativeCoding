function setup() {
  
  createCanvas (500, 500); // rozmiar okna
  
  colorMode (RGB); // tryb koloru RGB (Red, Green, Blue)
  
  let n = 12; // ile fragmentów
  
  for (let i = 0; i < n; i = i + 1) {
    
    // fill(red, green, blue);
    //
    // Połączenie tych 3 składowych (red, green i blue) definiuje pojedynczy kolor.
    // 
    // Parametry:
    // @red   - liczba z zakresu 0 - 255 (ile światła czerwonego, 255 = 100%)
    // @green - liczba z zakresu 0 - 255 (ile światła zielonego, 255 = 100%)
    // @blue  - liczba z zakresu 0 - 255 (ile światła niebieskiego, 255 = 100%)
    //
    // Więcej:
    // @see https://p5js.org/reference/#/p5/color
    
    fill (255/n * i, 0, 0);
    
    rect (0, height/n * i, width, height/n);
  }
}