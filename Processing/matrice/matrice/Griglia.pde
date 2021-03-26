public class Griglia {
  private int numC; // numero righe
  private int numR; // numero colonne
  private int lung; // lunghezza
  private int larg; // larghezza
  
  private Quadretto[] quadretti; // array
  
  private final static color RED = #b22222; // firebrick
  
  public Griglia(int numC, int numR) {
    this.numC = numC;
    this.numR = numR;
    this.lung = width/numR;
    this.larg = height/numC;
    
    quadretti = new Quadretto[lung * larg];
  }
  
  public void draw() {
    /* creazione di una matrice */
    for (int a = 0; a < numC; a++) line(a*larg, 0, a*larg, height); // colonne
    for (int a = 0; a < numR; a++) line(0, a*lung, width, a*lung); // righe
    
    int cont = 0;
    
    while (quadretti[cont] != null) { // ripeto il ciclo fino a quando ho quadretti
      fill(RED); // riempo il quadretto di colore
      // disegno un rettagolo con coordinataX, coordinataY, lunghezza e larghezza
      rect(quadretti[cont].getCordX() * width/numC, quadretti[cont].getCordY() * height/numR, lung, larg);
      
      cont++;
    }
  }
  
  public void premuto(float mx, float my) {
    boolean click = false; 
    int cont = 0; // contatore che conta il numero di quadretti colorati
    
    for (int a = 0; a < lung * larg; a++) {
      if (quadretti[a] != null) { // se ci sono quadretti colorati
        cont++; // aggiorno il contatore 
        
        int cordX = int(mx * numC)/width; // coordinata x del quadretto
        int cordY = int(my * numR)/height; // coordinata y del quadretto
        
        // controllo le coordinate del quadretto
        if(cordX == quadretti[a].getCordX() && cordY == quadretti[a].getCordY() ) {
          click = true; 
          
          for (int b = a; b < lung * larg; b++) {
            if(b < (lung * larg) - 1) {              
              quadretti[b] = quadretti[b + 1]; 
            }
            else {
              quadretti[b] = null;
            }
          }
        }
      }
    }
    if (!click) {
      quadretti[cont] = new Quadretto(mx ,my, numC, numR);
    }
  }
}
