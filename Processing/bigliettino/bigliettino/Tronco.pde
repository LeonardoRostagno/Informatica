public class Tronco {
  private float dimX; // lunghezza
  private float dimY; // larghezza
  private float cordX; // coordinata X
  private float cordY; // coordinata Y
  private color colore; // colore scheda
  private color bordo; // colore bordo
  
  public Tronco() {
   dimX = 30;
   dimY = 50;
   cordX = 315;
   cordY = 450;
   colore = color(205,133,63);
   bordo = color(139,69,19);
  }
  
  void show() {
    strokeWeight(5); // spessore 
    stroke(bordo); // colore bordo
    fill(colore); //colore della scheda
    rect(cordX, cordY, dimX, dimY); // funzione rettangolo
  }
  // set e get di dimX
  void setDimX(float dimX) { if(dimX >= 0) this.dimX = dimX; }
  float getDimX() { return dimX; }
  
  // set e get di dimY
  void setDimY(float dimY) { if(dimY >= 0) this.dimY = dimY; }
  float getDimY() { return dimY; }
  
  // set e get di cordX
  void setCordX(float x) { cordX = x; }
  float getCordX() { return cordX; }
  
  // set e get di cordY
  void setCordY(float y) { cordY = y; }
  float getCordY() { return cordY; }
  
  // set e get di colore 
  void setColore(color colore) { this.colore = color(colore); }
  color getColore() { return colore; }
  
  // set e get di bordo
  void setBordo(color colore) { this.bordo = color(colore); }
  color getBordo() { return bordo; }
  
}
