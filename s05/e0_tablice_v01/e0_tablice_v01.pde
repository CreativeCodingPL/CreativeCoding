float a1 = 1234;
float a2 = 32;
float a3 = 54; //<>//
float a = a1+a2+a3;
println(a);
float[] t = {1234, 32, 54};
//a = t1 + t2 + t3; //zle
a = t[0] + t[1] + t[2];
println(a);
t[0] = 13;
println(t);
