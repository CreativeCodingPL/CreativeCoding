int []currentgen = new int[100];
int generation = 0;
int w = 0;

int[] ruleset = {
  0, 1, 0, 1, 1, 0, 1, 0
};

void setup() {
  size(800, 800);
  background(255);
  w = width / currentgen.length;

  for (int i = 0; i < currentgen.length; i++) {
    if (i == int(currentgen.length/2)) currentgen[i]=1;
    else         currentgen[i]=0;
    noStroke();
    rect(i*w, generation*w, w, w);
  }
}

void draw() {
  display();
  generate();
}

void display() {
  for (int i = 0; i < currentgen.length; i++) {
    if (currentgen[i] == 1) 
      fill(0);
    else               
      fill(255);
    noStroke();
    rect(i*w, generation*w, w, w);
  }
}

void generate() {
  int []nextgen = new int[currentgen.length];
  for (int i = 1; i < currentgen.length-1; i++) {
    int left = currentgen[i-1];   // Left neighbor state
    int me = currentgen[i];       // Current state
    int right = currentgen[i+1];  // Right neighbor state
    nextgen[i] = rules(left, me, right); // Compute next generation state based on ruleset
  }

  currentgen = nextgen;
  generation++;
}

int rules (int a, int b, int c) {
  int nr = 4*a + 2*b + c;
  return ruleset[nr];
}