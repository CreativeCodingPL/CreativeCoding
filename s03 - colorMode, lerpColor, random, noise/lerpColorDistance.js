function setup() {
  createCanvas(500, 500);
  colorMode(RGB);
}

function draw() {
  
  background(255);  
  
  let colorFrom = color(255, 0, 0); // czerwony
  
  let colorTo = color(0, 255, 0); // zielony
  
  let n = 12; // ile fragmentów
  
  // rysuj tylko do pozycji myszy
  let distance = mouseX / (width/n);

  for (i = 0; i < distance; i = i + 1) {
    
    // @amt - stopień mieszania lub interpolacji dwóch kolorów; inaczej bliskość między dwoma kolorami
    //
    // Jeśli `amt` to 0, dostajesz całkowicie pierwszy kolor
    // Jeśli `amt` to 1, dostajesz całkowicie drugi kolor
    // Jeśli `amt` to 0.5, dostajesz kolor dokładnie pośrodku między pierwszym a drugim
    // Im bliżej 0 jest `amt`, tym bardziej kolor przypomina pierwszy kolor
    // Im bliżej 1 jest `amt`, tym bardziej kolor przypomina drugi kolor
    //
    let amt = map(i, 0, n, 0, 1);

    // lerpColor(colorFrom, colorTo, amt)
    //
    // Łączy dwa kolory, aby znaleźć kolor pomiędzy nimi
    //
    lerpedColor = lerpColor(colorFrom, colorTo, amt);

    fill(lerpedColor);
    rect((width / n) * i, 0, (width / n), height);
  }
}