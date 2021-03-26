public class Cielo {
  public static final color bianco = #FFFFFF; // colore per le stelle
  
  public Cielo() {
    
  }
  
  public void draw() {
     fill(0, 10);
     rect(0, 0, width, height); // rettangolo di area uguale alle dimensioni della finestra
     fill(bianco); // colore delle stelle
     noStroke(); // non viene disegnato nulla, ovvero interrompe la stella 
     ellipse(random(width), random(height), 2, 2); // disegna un'ellisse
  }
}
