class Smiec {
  String name;
  String type;
  String[] synonym;

  Smiec(String _name, String _type, String _synonym) {
    name = _name;
    type = _type;
    synonym = split(_synonym, ',');
  }
  color getColor() {
    color kolor = color(0,0,0);
    if (type.equals("Zmieszane")) {
      kolor = #7792b0;
    } else if (type.equals("Plastik i metal")) {
      kolor =  #f8c605;
    } else if (type.equals("Inne")) {
      kolor = color(0, 0, 0);
    } else if (type.equals("Papier")) {
      kolor =  #35a9dc;
    } else if (type.equals("Bio")) {
      kolor =  #a87536;
    } else if (type.equals("Szkło")) {
      kolor =  #86ba3e;
    } else if (type.equals("Leki")) {
      kolor =  color(0, 0, 0);
    } else if (type.equals(" Gabaryty")) {
      kolor =  color(0, 0, 0);
    } else if (type.equals("Elektrośmieci")) {
      kolor =  color(0, 0, 0);
    } else if (type.equals("Zielone")) {
      kolor =  color(0, 0, 0);
    } else if (type.equals("Baterie i akumulatory")) {
      kolor =  color(0, 0, 0);
    }

    return kolor;
  }
}
