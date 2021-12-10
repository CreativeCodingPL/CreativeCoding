color niebieski = color(0, 0, 255);
color czerwony = color(255, 0, 0);

fill(czerwony); 
rect(0, 0, width, height/2);

fill(niebieski);
rect(0, height/2, width, height/2);

color kolorA = get( width/2, 25); // góra część ekranu
color kolorB = get( width/2, 75); // dolna część ekranu

println(kolorA == niebieski); // false
println(kolorB == niebieski); // true
