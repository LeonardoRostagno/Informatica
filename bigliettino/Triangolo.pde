public class Triangolo {
  private float dim1; // lato 1
  private float dim2; // lato 2
  private float dim3; // lato 3
  private color colore; // colore scheda
  private color bordo; // colore bordo
  
  public Triangolo() {
    dim1 = 330;
    dim2 = 380;
    dim3 = 280;
    colore = color(34,139,34);
    bordo = color(0,100,0);
  }
  
  void show(int distanza, int larghezza) {
    strokeWeight(5); // spessore 
    stroke(bordo); // colore bordo
    fill(colore); //colore della scheda
    triangle(dim1, 200-distanza, dim2-larghezza, 300-distanza, dim3+larghezza, 300-distanza);
  }

  // set e get di dim1
  void setDim1(float dim1) { if(dim1 >= 0) this.dim1 = dim1; }
  float getDim1() { return dim1; }
  
  // set e get di dim2
  void setDim2(float dim2) { if(dim2 >= 0) this.dim2 = dim2; }
  float getDim2() { return dim2; }
  
  // set e get di dim3
  void setDim3(float dim3) { if(dim3 >= 0) this.dim3 = dim3; }
  float getDim3() { return dim3; }
  
  // set e get di colore 
  void setColore(color colore) { this.colore = color(colore); }
  color getColore() { return colore; }
  
  // set e get di bordo
  void setBordo(color colore) { this.bordo = color(colore); }
  color getBordo() { return bordo; }

}
