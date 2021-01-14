public class Foresta {
  private Albero[] alberi; // array di nome alberi, di tipo Albero
  
  public Foresta (int dim) {
    alberi = new Albero[dim];
    
    for (int b = 0; b < dim; b++) {
    alberi[b] = new Albero(b*width/9, height, width/12, 2*height/3);
    }
  }
  
  public void draw() {
    for(int c = 0; c < alberi.length; c++) {
      alberi[c].draw(); 
    }
  }
}
