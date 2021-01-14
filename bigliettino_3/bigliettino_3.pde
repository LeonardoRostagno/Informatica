Foresta f;
LuceCatena lc;
Cielo c;
Stella s;
StellaDinamica sd;

public final static int DIM = 10;

void setup() {
  size(600, 370);
  
  f = new Foresta(DIM);  
  lc = new LuceCatena(DIM);
  c = new Cielo();
  sd = new StellaDinamica();
}

public void draw() {
  f.draw();
  lc.draw();
  c.draw();
  sd.draw();
}

public void mousePressed() {
  lc.premuto(mouseX, mouseY);
}
