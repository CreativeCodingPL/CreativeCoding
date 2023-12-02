function setup() {
  
  createCanvas (500, 500); // rozmiar okna
  
  colorMode (HSB); // tryb koloru HSB (Hue, Saturation, Brightness)
  
  let n = 12; // ile fragmentów
  
  for (let i = 0; i < n; i = i + 1) {
    
    // fill(hue, saturation, brightness);
    //
    // Barwa (Hue):
    // czerwona - 0° lub 360°
    // żółta - 60°
    // zielona - 120°
    // niebieskozielona - 180°
    // niebieska - 240°
    // purpurowa - 300°
    // 
    // Parametry:
    // @hue (barwa) - liczba z zakresu 0 - 360 (odpowiada 0° - 360° na kole barw)
    // @saturation (nasycenie) - liczba z zakresu 0 - 100 (im wyższa wartość, tym żywszy kolor, 0 = biel, 100 = pełne nasycenie)
    // @brightness (jaskrawość) - liczba z zakresu 0 - 100 (im wyższa wartość, tym jaskrawszy kolor, 0 = czerń, 100 = pełny kolor)
    //
    // Więcej:
    // @see https://p5js.org/reference/#/p5/HSB
    // @see https://learnui.design/blog/the-hsb-color-system-practicioners-primer.html
    
    fill (255/n * i, 100, 100);
    
    rect (0, height/n * i, width, height/n);
  }
}