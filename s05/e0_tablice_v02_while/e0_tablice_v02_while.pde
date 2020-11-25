float[] t = {1234, 32, 54, 493, 32.4, 456};
//a = t1 + t2 + t3; //zle
//a = t[0] + t[1] + t[2] + ...; mozna ale po co
float a = 0;
int i = 0; //początek tablicy jest w 0
while (i < t.length)  {
 a = a + t[i];
 i++; //i = i + 1;
}
println(a);
println("to jest suma");
