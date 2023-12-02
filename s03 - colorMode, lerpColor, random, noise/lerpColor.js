function setup() {
  
  createCanvas (500, 500);
  
  colorMode (RGB);
  
  let colorFrom = color(30, 150, 40); // zielony
  
  let colorTo = color(0, 0, 200); // niebieski

  let n = 12; // ile framgnetów

  for (let i = 0; i < n; i = i + 1) {
    
    // @amt - stopień mieszania lub interpolacji dwóch kolorów; inaczej bliskość między dwoma kolorami
    //
    // Jeśli `amt` to 0, dostajesz całkowicie pierwszy kolor.
    //Jeśli `amt` to 1, dostajesz całkowicie drugi kolor.
    //Jeśli `amt` to 0.5, dostajesz kolor dokładnie pośrodku między pierwszym a drugim.
    //Im bliżej 0 jest `amt`, tym bardziej kolor przypomina pierwszy kolor.
    //Im bliżej 1 jest `amt`, tym bardziej kolor przypomina drugi kolor.

    let amt = map(i, 0, n, 0, 1);

    // lerpColor(colorFrom, colorTo, amt)
    // Łączy dwa kolory, aby znaleźć kolor pomiędzy nimi
    
    lerpedColor = lerpColor(colorFrom, colorTo, amt);

    fill(lerpedColor);
    
    rect(0, (height / n) * i, width, height / n);
  }
}