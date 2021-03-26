Albero a1, a2;
Cielo c;
Stella s;
StellaDinamica sd;

void setup() {
  size(600, 300);
  
  a1 = new Albero(width/2, height, width/12, 3.5*height/5);
  a2 = new Albero(1.5*width/2, height, width/12, 3.5*height/5);
  c = new Cielo();
  sd = new StellaDinamica();
}

public void draw() {
  a1.draw();
  a2.draw();
  c.draw();
  sd.draw();
}
