float[] t; //<>//
float a;
t = new float[100];
for (int i = 0; i < t.length; i++) {
  t[i] = random(6);
}
//początek tablicy jest w 0
//ta petal wymusza zeby ta druga byla wykonana 
//ile razy trzeba zeby calosc posortowac
for (int n = 0; n < t.length; n++) { 
  for (int i = 0; i < t.length - 1; i++) { //<>//
    if (t[i] > t[i+1]) {
      a = t[i];
      t[i] = t[i+1];
      t[i+1] = a;
    }
  }
}
println(a);
println("to jest suma");
