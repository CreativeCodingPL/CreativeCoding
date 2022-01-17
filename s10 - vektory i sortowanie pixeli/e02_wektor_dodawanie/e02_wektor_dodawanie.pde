size(500, 500);


PVector V1 = new PVector(250, 250);
PVector V2 = new PVector(50, 150);

//V1.add(V2); //zmienia V1 na nowy powiekszony o V2);
println(V1);
println(V2);
println(PVector.add(V1, V2).x);
PVector V3 = PVector.add(V1, V2);
