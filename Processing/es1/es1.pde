CerchioDinamico c1;
CerchioDinamico c2;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  background(0,0,0);
  c1 = new CerchioDinamico();
  c1.setColore(color(0,255,255));
  c1.setBordo(color(0,0,0));
  c1.setCordX(100);
  
  c2 = new CerchioDinamico();
  c1.setColore(color(0,255,0));
  c1.setBordo(color(0,0,0));
  c1.setCordX(540);
}

public void draw(){
  c1.show();   
  c2.show();
}
