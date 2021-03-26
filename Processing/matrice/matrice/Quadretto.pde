public class Quadretto {
  private int x; // coordinata x
  private int y; // coordinata y
  private int lung; // lunghezza
  private int larg; // larghezza
     
  public Quadretto(float x, float y, int lung, int larg) {
    this.lung = lung;
    this.larg = larg;
    this.x = int(x * lung)/width;
    this.y = int(y * larg)/height;
  }
  
  public int getCordX () {
    return x; 
  }
  
  public int getCordY () {
    return y; 
  }
}
