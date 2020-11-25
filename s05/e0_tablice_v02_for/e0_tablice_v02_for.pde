float[] t = {1234, 32, 54, 493, 32.4, 456};
//a = t1 + t2 + t3; //zle
//a = t[0] + t[1] + t[2] + ...; mozna ale po co
float a = 0;
 //początek tablicy jest w 0
for (int i = 0; i < t.length; i++)  { //<>//
 a = a + t[i];
}
println(a);
println("to jest suma");
