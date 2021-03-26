class Griglia {
  private float altezza, larghezza;
  private int righe, colonne;
  
  private ListaQuadretti lQuadretti;
  
  public Griglia(float altezza, float larghezza, int righe, int colonne) {
    this.altezza=altezza;
    this.larghezza=larghezza;
    this.righe=righe;
    this.colonne=colonne;
    
    this.lQuadretti = new ListaQuadretti(this);
  }
  
  public float larghezzaQuadretto() {
    return larghezza / colonne;
  }

  public float altezzaQuadretto() {
    return altezza / righe;
  }  
  
  public void draw() {
    float lq = larghezzaQuadretto();
    float hq = altezzaQuadretto();
    
    // disegna griglia
    for(int i=0; i<=righe; i++) {
      line(0, hq*i, larghezza, hq*i);
    }
    for(int i=0; i<=colonne; i++) {
      line(lq*i, 0, hq*i, altezza);
    }
    
    lQuadretti.disegna();
  }
  
  public void disegnaQuadretto(Quadretto q) {
    float hq = this.altezzaQuadretto();
    float lq = this.larghezzaQuadretto();
    
    fill(#000000);
    rect(q.getC() * lq, q.getR() * hq, lq, hq);    
  }
  
  public void premuto(float x, float y) {
    int r = int(y * this.getRighe() / this.getAltezza()); 
    int c = int(x * this.getColonne() / this.getLarghezza());
    
    Quadretto q = new Quadretto(r, c);
    
    lQuadretti.gestioneQuadretto(q);
  }
  
  public float getLarghezza() {
    return larghezza;
  }

  public float getAltezza() {
    return altezza;
  }
  
  public int getColonne() {
    return colonne;
  }
  
  public int getRighe() {
    return righe;
  }
}
