class ListaQuadretti {
  private Quadretto[] quadretti;
  private Griglia griglia;
  private int quanti;
 
  public ListaQuadretti(Griglia griglia) {
    this.griglia = griglia;
    this.quanti = 0;
    
    quadretti = new Quadretto[griglia.getColonne() * griglia.getRighe()];
  }
  
  public void disegna() {
    for (int a = 0; a < quanti; a++) {
      griglia.disegnaQuadretto(quadretti[a]); 
    }
  }
  
  public void gestioneQuadretto(Quadretto q) {
    if (q == null) {
      return; 
    }
    
    int pos = this.ricercaQuadretto(q);
    
    if (pos == -1) {
      System.out.println("Aggiunto " + q);
      quadretti[quanti++] = q;
    } 
    else {
      System.out.println("Rimosso " + q);
      this.rimuoviQuadretto(pos);
    }
  }
  
  public int ricercaQuadretto(Quadretto q) {
    int cont = 0;
    int pos = -1;
    
    while (cont < quanti && pos == -1) {
      if (quadretti[cont].equals(q)) {
        pos = cont; 
      }
      
      cont++; 
    }
    
    return pos;
  }
  
  public void rimuoviQuadretto(int pos) {
    for (int a = pos; a < quanti - 1; a++) {
      quadretti[a] = quadretti[a + 1];
    }
    quanti--;
  }
  
}
