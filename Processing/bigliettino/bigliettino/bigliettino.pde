Scheda s;
Triangolo t1;
Triangolo t2;
Triangolo t3;
Triangolo t4;
Scritta string;
Tronco t;

void settings() {
  size(1040, 760); // dimensione della scheda
}

void setup() {
  s = new Scheda();  
  t1 = new Triangolo();
  t2 = new Triangolo();
  t3 = new Triangolo();
  t4 = new Triangolo();
  string = new Scritta();
  t = new Tronco();
}

void draw() {
  s.show(); 
  t1.show(-150, 0);
  t2.show(-100, 5);
  t3.show(-50, 10);
  t4.show(0, 15);  
  string.show();
  t.show();
}
